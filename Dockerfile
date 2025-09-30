FROM jenkins/jenkins:lts
# install plugins or tools here if required
# Example:
# RUN jenkins-plugin-cli --plugins git workflow-aggregator

# expose ports (for documentation only)
EXPOSE 8080
EXPOSE 50000

# define volumes
VOLUME /var/jenkins_home