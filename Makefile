# $FreeBSD$

PORTNAME=	jrds
PORTVERSION=	20150406
PORTREVISION=	1
CATEGORIES=	net-mgmt
MASTER_SITES=	GH

MAINTAINER=	bougie@appartland.eu
COMMENT=	Another monitoring application, intentend to be simple to use and extensible

LICENSE=	GPLv3

USE_GITHUB=	yes
GH_ACCOUNT=	bougie
GH_PROJECT=	jrds
GH_TAGNAME=	d6c98d25fd4b3f882d70e0acb7da0decd8024b11

DIST_SUBDIR=	${PORTNAME}

USE_JAVA=       yes
JAVA_VERSION=   1.7+
JAVA_BUILD=     yes
JAVA_RUN=       yes
USE_ANT=        yes
BUILD_DEPENDS=  ant:${PORTSDIR}/devel/apache-ant

pre-build:
	cd ${WRKSRC} && \
		CLASSPATH=${WRKSRC}/ivy-2.2.0.jar ant resolve

do-build:
	cd ${WRKSRC} && \
		ant -Dappserv.home="." -Dappserv.servlet-api="./libjetty"

do-install:
	${MKDIR} ${STAGEDIR}${DATADIR} && \
		${INSTALL_DATA} ${WRKSRC}/build/jrds.war ${STAGEDIR}${DATADIR}

.include <bsd.port.mk>
