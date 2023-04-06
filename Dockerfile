FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl git build-essential && \
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

RUN git clone https://github.com/defi-minds/hardhat.git && \
    cd hardhat && \
    npm install && \
    npm run build

CMD ["bash"]
