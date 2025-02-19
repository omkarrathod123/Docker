FROM ubuntu
LABEL key="omkarrathod0705"

RUN apt-get update -y
RUN sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
RUN echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN sudo apt-get update -y
RUN sudo apt-get install jenkins -y
RUN sudo apt update -y && sudo apt install fontconfig openjdk-17-jre -y