FROM ubuntu:20.04
RUN apt-get update -y && apt-get install curl wget lsb-release gnupg -y
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt-get update -y
RUN apt-get install -y terraform
COPY . /
RUN ls -ltr
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
