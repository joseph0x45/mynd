FROM node:19-alpine
RUN apk update
RUN apk --no-cache --update add build-base
RUN apk upgrade
RUN apk add bash
RUN apk add github-cli
RUN apk add tmux
RUN apk add curl
RUN apk add neovim
RUN npx kuchiyose kitty app -y
EXPOSE 5173
