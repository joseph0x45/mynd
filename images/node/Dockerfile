FROM node:19-alpine
ARG gh_token
ENV GH_TOKEN=${gh_token}
RUN apk update
RUN apk --no-cache --update add build-base
RUN apk upgrade
RUN apk add bash
RUN apk add github-cli
RUN apk add tmux
RUN apk add curl
RUN apk add neovim
RUN curl -L https://dotfiler.onrender.com/nvim | bash
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
