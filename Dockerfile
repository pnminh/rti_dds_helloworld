FROM ubuntu:18.04
 
# Store the test apps in /app 
WORKDIR /app
# install nc
RUN apt-get update -y && apt-get install -y netcat net-tools tcpdump
# Copy the apps and QoS file
# Copy license file if needed
COPY objs/x64Linux4gcc7.3.0/HelloWorld_publisher \
     objs/x64Linux4gcc7.3.0/HelloWorld_subscriber \
     ./rti_license.dat \
     ./
USER 1001
# Add the apps to the PATH
ENV  PATH=$PATH:/app \
     APP_ARGS=