FROM jboss/wildfly:11.0.0.Final
ADD custom.cli /tmp
ADD mysql-connector-java-5.1.45-bin.jar /tmp
RUN /opt/jboss/wildfly/bin/jboss-cli.sh --file=/tmp/custom.cli
RUN rm -rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history/current/

