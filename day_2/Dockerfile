FROM debian

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y gnat && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y gcc  && rm -rf /var/lib/apt/lists/*