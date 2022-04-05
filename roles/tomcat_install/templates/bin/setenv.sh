#!/bin/sh
JRE_HOME=/usr/lib/jvm/jre
JAVA_OPTS="-Xms4G -Xmx4G"
CLASSPATH=$CATALINA_HOME/lib/log4j2/log4j-api-2.17.2.jar:$CATALINA_HOME/lib/log4j2/log4j-jul-2.17.2.jar:$CATALINA_HOME/lib/log4j2/log4j-core-2.17.2.jar:$CATALINA_HOME/conf
JAVA_OPTS="$JAVA_OPTS -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager"
