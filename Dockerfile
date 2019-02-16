# Pull base image.
FROM centos:7

# docker build --build-arg UNAME=$USER --build-arg UID=$(id -u) --build-arg GID=$(id -g) -f Dockerfile -t myvivado .
# docker run myvivado

ARG UNAME=developer
ARG UID=1000
ARG GID=1000

ARG UHOME=/home/$UNAME
#ENV LANG zh_TW.UTF-8
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

# Install
RUN yum install -y libX11
RUN yum install -y libXext
RUN yum install -y libXrender
RUN yum install -y libXtst
RUN yum install -y fontconfig
RUN yum install -y libXxf86vm
RUN yum install -y libGL
RUN yum install -y cairo
RUN yum install -y gtk2
RUN yum install -y gtk3
RUN yum install -y alsa-lib
RUN yum install -y libxslt
USER $UNAME
# Set environment variables.
ENV HOME $UHOME

# Define working directory.
WORKDIR $UHOME

# Define default command.
CMD ["bash"]
  



