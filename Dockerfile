FROM jboss/wildfly:11.0.0.Final
ADD custom.cli /tmp
ADD mysql-connector-java-8.0.11.jar /tmp
RUN /opt/jboss/wildfly/bin/jboss-cli.sh --file=/tmp/custom.cli
RUN rm -rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history/current/

