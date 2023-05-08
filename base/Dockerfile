FROM ubuntu:latest
RUN apt-get update
RUN type -p curl >/dev/null || (apt update && apt install curl -y)
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg 
RUN chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg 
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null 
RUN apt update 
RUN apt install gh -y
RUN apt install -y build-essential
RUN curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
RUN tar xzvf nvim-linux64.tar.gz
RUN mv nvim-linux64 /opt/
RUN ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
