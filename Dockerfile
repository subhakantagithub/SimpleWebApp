FROM jboss/wildfly:20.0.1.Final

EXPOSE 8080 8081 9990 8443 8787

ADD ADD ./target/openshift-test-0.0.1.jar /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/WildFly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
