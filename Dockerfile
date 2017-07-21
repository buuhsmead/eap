FROM openshift/jboss-eap70-openshift:latest 

MAINTAINER buuhsmead

ADD modules/com/ $JBOSS_HOME/modules/com/

COPY standalone-openshift.xml $JBOSS_HOME/standalone/configuration/

COPY datasource-common.sh $JBOSS_HOME/bin/launch/datasource-common.sh
 
