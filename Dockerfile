FROM ubuntu:latest

WORKDIR /ansible

RUN apt-get update; \
    apt install software-properties-common -y; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openssh-client; \
    DEBIAN_FRONTEND=noninteractive apt install python3.10 -y; DEBIAN_FRONTEND=noninteractive apt install python3-pip -y; \
    apt-add-repository ppa:ansible/ansible; \
    apt update -y ; DEBIAN_FRONTEND=noninteractive apt install curl -y; \
    DEBIAN_FRONTEND=noninteractive apt install ansible -y; \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash; \
    pip3 install -r /usr/lib/python3/dist-packages/ansible_collections/azure/azcollection/requirements-azure.txt; \
    apt clean


COPY . .

RUN mkdir ~/.azure && \
    touch ~/.azure/credentials ; \
    mkdir ~/.ssh

CMD echo "[default]" > ~/.azure/credentials && \
    echo "subscription_id = $AZURE_SUBSCRIPTION_ID" >> ~/.azure/credentials && \
    echo "client_id = $AZURE_CLIENT_ID" >> ~/.azure/credentials && \
    echo "secret = $AZURE_SECRET" >> ~/.azure/credentials && \
    echo "tenant = $AZURE_TENANT" >> ~/.azure/credentials && \
    echo "$SSH_PUBLIC_KEY" > ~/.ssh/id_rsa.pub && \
    bash ./run.sh