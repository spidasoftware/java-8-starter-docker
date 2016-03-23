from java:8-jdk

ENV SPIDA_HOME=/root/SPIDA

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g grunt-cli

# RUN export SDKMAN_DIR="/usr/local/sdkman" && \
#     curl -s get.sdkman.io | bash && \
#     echo "installed" && \
#     bash /usr/local/sdkman/bin/sdkman-init.sh && \
#     echo "sourced" && \
#     echo "y" | sdk install groovy 2.3.4 && \

RUN mkdir -p /root/SPIDA/calc/libraries && \
    mkdir -p /root/SPIDA/logs && \
    mkdir -p /root/SPIDA/clients
