FROM jenkins/jenkins:lts


# Use Default Certs for HTTPS
COPY https.pem /var/lib/jenkins/cert
COPY https.key /var/lib/jenkins/pk

# Change Default Slave Port
ENV JENKINS_SLAVE_AGENT_PORT 50002

# Set JENKINS OPTS
ENV JENKINS_OPTS --httpPort= 7777 --httpsPort=8888 --httpsCertificate=/var/lib/jenkins/cert --httpsPrivateKey=/var/lib/jenkins/pk
EXPOSE 7777 8888 
