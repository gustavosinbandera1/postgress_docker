# our local base image
FROM ubuntu:18.04

LABEL description="Container for use with Visual Studio" 

# install build dependencies 
RUN apt-get update && apt-get install -y g++ rsync zip openssh-server make  wget libpqxx-dev nano

# postgresql postgresql-contrib libpqxx-4.0v5  libpq-dev  libqt4-sql-psql
#libpqxx-dev   

# configure SSH for communication with Visual Studio 
RUN mkdir -p /var/run/sshd

RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && \ 
   ssh-keygen -A 

EXPOSE 22
WORKDIR "/home/code"

#SHELL ["/bin/bash", "-c"]
CMD ["/bin/bash"]
# docker build -t ubuntu-cpp .
# docker run -p 5000:22 -i -t ubuntu-cpp /bin/bash