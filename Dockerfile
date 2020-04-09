FROM ubuntu:18.04
 
# Store the test apps in /app 
WORKDIR /app
# install nc
RUN apt-get update -y && apt-get install -y netcat net-tools tcpdump
# Copy the apps and QoS file
COPY objs/x64Linux4gcc7.3.0/HelloWorld_publisher \
     objs/x64Linux4gcc7.3.0/HelloWorld_subscriber \
     objs/x64Linux4gcc7.3.0/rti_license.dat \
     ./
USER 1001
EXPOSE 7400/udp 7410/udp 7411/udp
# Add the apps to the PATH
ENV PATH $PATH:/app