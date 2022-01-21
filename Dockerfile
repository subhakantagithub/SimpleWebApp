FROM jboss/wildfly
ADD ./target/openshift-test-0.0.1.jar /opt/jboss/wildfly/standalone/deployments/

EXPOSE 8080 8081 9990 8443 8787
