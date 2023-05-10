FROM ubuntu:latest
RUN apt update
RUN apt upgrade
RUN apt install curl -y
RUN type -p curl >/dev/null || (apt update && apt install curl -y)
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg 
RUN chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg 
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null 
RUN apt update 
RUN apt install gh -y
RUN apt-get install build-essential -y
RUN apt-get install unzip -y
RUN apt install neovim -y
RUN curl -fsSL https://bun.sh/install | bash
RUN curl -L https://dotfiler.onrender.com/nvim | bash
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
