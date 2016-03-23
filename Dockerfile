from java:8-jdk

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && \
    sudo apt-get install -y nodejs && \
    curl -s http://get.sdkman.io | bash && \
    echo "y" | sdk install groovy 2.3.4 && \
    npm install -g grunt-cli

RUN mkdir -p /root/SPIDA/calc/libraries && \
    mkdir -p /root/SPIDA/logs && \
    mkdir -p /root/SPIDA/clients
