JRDS port
=========

This is a test of writing a port on FreeBSD for JRDS.  
It use the JRDS fork on bougie's github with ivy.jar included in sources.

Build EXTRA_DIST
----------------

```
# rm ~/.ivy2/cache
```

Clone the JRDS repo in a temporary directory and run:

```
# ant resolve > ant_resolve.log
# awk -F' ' '{if($0 ~ /downloading/) print $3}' ant_resolve.log > packages_jrds.txt
```

Next, move the packages_jrds.txt file in the utils subdir of the jrds port and run:

```
# python extra_dist.py
```

You will see the EXTRA_DIST part of the readme file !
