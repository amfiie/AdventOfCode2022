FROM debian

ENV DEBIAN_FRONTEND=noninteractive
RUN echo set bell-style none > /etc/inputrc
RUN apt update && apt install -y build-essential curl libffi-dev libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5 && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 BOOTSTRAP_HASKELL_GHC_VERSION=latest BOOTSTRAP_HASKELL_CABAL_VERSION=latest BOOTSTRAP_HASKELL_INSTALL_STACK=1 BOOTSTRAP_HASKELL_INSTALL_HLS=0 BOOTSTRAP_HASKELL_ADJUST_BASHRC=P sh && rm -rf /var/lib/apt/lists/*
ENV PATH=$PATH:/root/.ghcup/bin