FROM elixir:1.3.4

SHELL ["/bin/bash", "-c"]

ENV NVMURL https://rawgit.com/creationix/nvm/v0.33.6/install.sh

ENV TEMP https://github.com/phoenixframework/archives/raw/master

RUN touch ~/.bashrc && cd /tmp \
&& wget --no-check-certificate $NVMURL \
&& bash ./install.sh \
&& rm -f ./install.sh \
&& source ~/.bashrc \
&& nvm install 8.9 \
&& apt update \
&& apt install -y inotify-tools

RUN mix local.hex --force && mix local.rebar && mix archive.install $TEMP/phoenix_new-1.2.5.ez --force

RUN mkdir -p /root/oiax/projects
WORKDIR /root/oiax/projects
