FROM ubuntu:18.04
WORKDIR /app
# COPY rtiroutingservice \
#      rti_license.dat \
#       ./
COPY . /app
# Add the apps to the PATH
ENV PATH=$PATH:/app \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/app/lib \
    ARG=
CMD ./rtiddsping -subscriber ${ARGS}