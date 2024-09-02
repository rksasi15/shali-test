# Use the official Jenkins LTS image with JDK 17
FROM jenkins/jenkins:lts-jdk17

# Switch to root user to install Docker CLI and other utilities
USER root

# Install Docker CLI and other utilities
RUN apt-get update && \
    apt-get install -y \
    curl \
    sudo \
    lsb-release \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Docker CLI
RUN curl -fsSL https://get.docker.com | sh

# Create Jenkins user (if not already present)
RUN usermod -aG sudo jenkins && \
    usermod -aG docker jenkins

# Expose Jenkins ports
EXPOSE 8080
EXPOSE 50000

# Switch back to Jenkins user
USER jenkins

# Use the correct path for Java
ENTRYPOINT ["/opt/java/openjdk/bin/java", "-jar", "/usr/share/jenkins/jenkins.war"]

