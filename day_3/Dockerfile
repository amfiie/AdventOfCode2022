FROM debian

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y perl && rm -rf /var/lib/apt/lists/*
RUN echo set bell-style none > /etc/inputrc