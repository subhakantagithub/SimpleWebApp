FROM jboss/wildfly:latest

USER jboss

EXPOSE 8080 8081 9990 8443 8787

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
