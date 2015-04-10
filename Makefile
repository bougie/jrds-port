# $FreeBSD$

PORTNAME=       jrds
PORTVERSION=    20150406
PORTREVISION=   1
CATEGORIES=     net-mgmt java
MASTER_SITES=   GH

MAINTAINER=     bougie@appartland.eu
COMMENT=        Another monitoring application, intentend to be simple to use and extensible

DISTFILES+=     ${GH_ACCOUNT}-${PORTNAME}-${PORTVERSION}-${GH_TAGNAME}_GH0.tar.gz

EXTRA_DIST= rrd4j23 log4j dojo snmp4j json xmlrpcserver commonsnet commonsfileupload httpclient mysqlconnectorjava postgresql84 jodatime base64 xmlrpccommon wscommonsutil xmlapis commonsio httpcore commonslogging commonscodec snmp4jagent junit opendmk_jmxremote_optional_jar10b01 hamcrestcore jettyserver jettywebapp jettyjmx slf4japi slf4jlog4j12 javaxservletapi jettyhttp jettyio jettyutil jettyxml jettyservlet jettysecurity

rrd4j23_SUFFIX=   -SNAPSHOT.jar
rrd4j23_SUBDIR=   org/rrd4j/rrd4j/jars
rrd4j23_REALNAME= rrd4j-2.3

log4j_SUFFIX=   -1.2.17.jar
log4j_SUBDIR=   log4j/log4j/bundles
log4j_REALNAME= log4j

dojo_SUFFIX=   -1.10.4.zip
dojo_SUBDIR=   org/dojotoolkit/dojo/zips
dojo_REALNAME= dojo

snmp4j_SUFFIX=   -2.2.5.jar
snmp4j_SUBDIR=   org/snmp4j/snmp4j/jars
snmp4j_REALNAME= snmp4j

json_SUFFIX=   -20140107.jar
json_SUBDIR=   org/json/json/jars
json_REALNAME= json

xmlrpcserver_SUFFIX=   -3.1.3.jar
xmlrpcserver_SUBDIR=   org/apache/xmlrpc/xmlrpc-server/jars
xmlrpcserver_REALNAME= xmlrpc-server

commonsnet_SUFFIX=   -3.3.jar
commonsnet_SUBDIR=   commons-net/commons-net/jars
commonsnet_REALNAME= commons-net

commonsfileupload_SUFFIX=   -1.3.1.jar
commonsfileupload_SUBDIR=   commons-fileupload/commons-fileupload/jars
commonsfileupload_REALNAME= commons-fileupload

httpclient_SUFFIX=   -4.4.jar
httpclient_SUBDIR=   org/apache/httpcomponents/httpclient/jars
httpclient_REALNAME= httpclient

mysqlconnectorjava_SUFFIX=   -5.1.30.jar
mysqlconnectorjava_SUBDIR=   mysql/mysql-connector-java/jars
mysqlconnectorjava_REALNAME= mysql-connector-java

postgresql84_SUFFIX=   -702.jdbc4.jar
postgresql84_SUBDIR=   postgresql/postgresql/jars
postgresql84_REALNAME= postgresql-8.4

jodatime_SUFFIX=   -2.3.jar
jodatime_SUBDIR=   joda-time/joda-time/jars
jodatime_REALNAME= joda-time

base64_SUFFIX=   -2.3.8.jar
base64_SUBDIR=   net/iharder/base64/jars
base64_REALNAME= base64

xmlrpccommon_SUFFIX=   -3.1.3.jar
xmlrpccommon_SUBDIR=   org/apache/xmlrpc/xmlrpc-common/jars
xmlrpccommon_REALNAME= xmlrpc-common

wscommonsutil_SUFFIX=   -1.0.2.jar
wscommonsutil_SUBDIR=   org/apache/ws/commons/util/ws-commons-util/jars
wscommonsutil_REALNAME= ws-commons-util

xmlapis_SUFFIX=   -1.0.b2.jar
xmlapis_SUBDIR=   xml-apis/xml-apis/jars
xmlapis_REALNAME= xml-apis

commonsio_SUFFIX=   -2.2.jar
commonsio_SUBDIR=   commons-io/commons-io/jars
commonsio_REALNAME= commons-io

httpcore_SUFFIX=   -4.4.jar
httpcore_SUBDIR=   org/apache/httpcomponents/httpcore/jars
httpcore_REALNAME= httpcore

commonslogging_SUFFIX=   -1.2.jar
commonslogging_SUBDIR=   commons-logging/commons-logging/jars
commonslogging_REALNAME= commons-logging

commonscodec_SUFFIX=   -1.9.jar
commonscodec_SUBDIR=   commons-codec/commons-codec/jars
commonscodec_REALNAME= commons-codec

snmp4jagent_SUFFIX=   -2.1.1.jar
snmp4jagent_SUBDIR=   org/snmp4j/snmp4j-agent/jars
snmp4jagent_REALNAME= snmp4j-agent

junit_SUFFIX=   -4.11.jar
junit_SUBDIR=   junit/junit/jars
junit_REALNAME= junit

opendmk_jmxremote_optional_jar10b01_SUFFIX=   -ea.jar
opendmk_jmxremote_optional_jar10b01_SUBDIR=   org/glassfish/external/opendmk_jmxremote_optional_jar/jars
opendmk_jmxremote_optional_jar10b01_REALNAME= opendmk_jmxremote_optional_jar-1.0-b01

hamcrestcore_SUFFIX=   -1.3.jar
hamcrestcore_SUBDIR=   org/hamcrest/hamcrest-core/jars
hamcrestcore_REALNAME= hamcrest-core

jettyserver_SUFFIX=   -9.2.0.v20140526.jar
jettyserver_SUBDIR=   org/eclipse/jetty/jetty-server/jars
jettyserver_REALNAME= jetty-server

jettywebapp_SUFFIX=   -9.2.0.v20140526.jar
jettywebapp_SUBDIR=   org/eclipse/jetty/jetty-webapp/jars
jettywebapp_REALNAME= jetty-webapp

jettyjmx_SUFFIX=   -9.2.0.v20140526.jar
jettyjmx_SUBDIR=   org/eclipse/jetty/jetty-jmx/jars
jettyjmx_REALNAME= jetty-jmx

slf4japi_SUFFIX=   -1.7.7.jar
slf4japi_SUBDIR=   org/slf4j/slf4j-api/jars
slf4japi_REALNAME= slf4j-api

slf4jlog4j12_SUFFIX=   -1.7.7.jar
slf4jlog4j12_SUBDIR=   org/slf4j/slf4j-log4j12/jars
slf4jlog4j12_REALNAME= slf4j-log4j12

javaxservletapi_SUFFIX=   -3.1.0.jar
javaxservletapi_SUBDIR=   javax/servlet/javax.servlet-api/jars
javaxservletapi_REALNAME= javax.servlet-api

jettyhttp_SUFFIX=   -9.2.0.v20140526.jar
jettyhttp_SUBDIR=   org/eclipse/jetty/jetty-http/jars
jettyhttp_REALNAME= jetty-http

jettyio_SUFFIX=   -9.2.0.v20140526.jar
jettyio_SUBDIR=   org/eclipse/jetty/jetty-io/jars
jettyio_REALNAME= jetty-io

jettyutil_SUFFIX=   -9.2.0.v20140526.jar
jettyutil_SUBDIR=   org/eclipse/jetty/jetty-util/jars
jettyutil_REALNAME= jetty-util

jettyxml_SUFFIX=   -9.2.0.v20140526.jar
jettyxml_SUBDIR=   org/eclipse/jetty/jetty-xml/jars
jettyxml_REALNAME= jetty-xml

jettyservlet_SUFFIX=   -9.2.0.v20140526.jar
jettyservlet_SUBDIR=   org/eclipse/jetty/jetty-servlet/jars
jettyservlet_REALNAME= jetty-servlet

jettysecurity_SUFFIX=   -9.2.0.v20140526.jar
jettysecurity_SUBDIR=   org/eclipse/jetty/jetty-security/jars
jettysecurity_REALNAME= jetty-security

MASTER_IVY=     http://jrds.fr/maven2/
.for dist in ${EXTRA_DIST}
.ifdef ${dist}_REALNAME
DISTFILES+=     ${${dist}_REALNAME}${${dist}_SUFFIX}:${dist}
MASTER_SITES+=  ${MASTER_IVY}/${${dist}_SUBDIR}/:${dist}
.else
DISTFILES+=     ${dist}${${dist}_SUFFIX}:${dist}
MASTER_SITES+=  ${MASTER_IVY}/${${dist}_SUBDIR}/:${dist}
.endif
.endfor

EXTRACT_ONLY=   ${GH_ACCOUNT}-${PORTNAME}-${PORTVERSION}-${GH_TAGNAME}_GH0.tar.gz

LICENSE=        GPLv3

USE_GITHUB=     yes
GH_ACCOUNT=     fbacchella
GH_PROJECT=     jrds
GH_TAGNAME=     febd4fd4c7986eba7e510c69fc622fde5d855fc1

DIST_SUBDIR=    ${PORTNAME}

USE_JAVA=       yes
JAVA_VERSION=   1.7+
JAVA_BUILD=     yes
JAVA_RUN=       yes
USE_ANT=        yes
EXTRACT_DEPENDS= unzip:${PORTSDIR}/archivers/unzip
BUILD_DEPENDS=  ant:${PORTSDIR}/devel/apache-ant

post-extract:
	${MKDIR} ${WRKSRC}/lib ${WRKSRC}/libtest ${WRKSRC}/libjetty ${WRKSRC}/build ${WRKSRC}/libprobes
	# Copy all library in lib dir
.for dist in ${DISTFILES}
.if "${dist}" != "${EXTRACT_ONLY}" && "${dist}" != "dojo${dojo_SUFFIX}"
	${CP} ${DISTDIR}/${DIST_SUBDIR}/`echo ${dist} | cut -d: -f1` ${WRKSRC}/lib
.endif
.endfor
	# copy a peace of lib in libjetty directory
	${CP} ${WRKSRC}/lib/log4j* ${WRKSRC}/lib/slf4j-* ${WRKSRC}/lib/javax.servlet* ${WRKSRC}/lib/jetty-* ${WRKSRC}/libjetty
	# unzip dojo*.zip
	unzip -d ${WRKSRC}/lib ${DISTDIR}/${DIST_SUBDIR}/dojo${dojo_SUFFIX} "dojo-release-*/*"
	${MV} ${WRKSRC}/lib/dojo-release-* ${WRKSRC}/lib/dojo

do-build:
	cd ${WRKSRC} && \
		ant -Dappserv.home="." -Dappserv.servlet-api="./libjetty"
	cd ${WRKSRC} && \
		ant jetty

do-install:
	${MKDIR} ${STAGEDIR}${DATADIR} && \
		${INSTALL_DATA} ${WRKSRC}/build/jrds.war ${STAGEDIR}${DATADIR}
	# Copy config files
	${MKDIR} ${STAGEDIR}${ETCDIR}
	${INSTALL_DATA} ${PATCHDIR}/jrds.properties.sample ${STAGEDIR}${ETCDIR} && \
		${REINPLACE_CMD} -e 's#%%ETCDIR%%#${ETCDIR}#g' ${STAGEDIR}${ETCDIR}/jrds.properties.sample && \
		${REINPLACE_CMD} -e 's#%%DATADIR%%#${DATADIR}#g' ${STAGEDIR}${ETCDIR}/jrds.properties.sample && \
		${REINPLACE_CMD} -e 's#%%LOGDIR%%#${PREFIX}/var/log/${PORTNAME}#g' ${STAGEDIR}${ETCDIR}/jrds.properties.sample

.include <bsd.port.mk>
