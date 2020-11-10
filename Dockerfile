<<<<<<< HEAD
#Dockerfile for challenge1
=======
<<<<<<< HEAD
=======
#Dockerfile for challenge1
>>>>>>> release/1.0.0
>>>>>>> 634c4227e1a9341178bfb1fb410743f923f4ee56
FROM ubuntu:18.04
MAINTAINER Aleksandar Diklic "https://github.com/rastasheep"

RUN apt-get update

RUN apt-get install -y openssh-server sudo
RUN mkdir /var/run/sshd

RUN echo 'root:bits' |chpasswd
RUN adduser akshita
RUN echo 'akshita:jain123' | chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin no/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
>>>>>>> release/1.0.0
>>>>>>> 634c4227e1a9341178bfb1fb410743f923f4ee56
