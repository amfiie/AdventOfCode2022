FROM debian

ENV DEBIAN_FRONTEND=noninteractive
RUN echo set bell-style none > /etc/inputrc
RUN apt update && apt install -y wget && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y libdb-dev && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y gcc && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y libgmp3-dev && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y make && rm -rf /var/lib/apt/lists/*
RUN wget http://sourceforge.net/projects/gnucobol/files/gnu-cobol/3.0/gnucobol-3.0-rc1.tar.gz && tar xvf gnucobol-3.0-rc1.tar.gz && cd gnucobol-3.0-rc1 && ./configure && make && make install && ldconfig && cd .. && rm gnucobol-3.0-rc1.tar.gz && rm gnucobol-3.0-rc1 -r