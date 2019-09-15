FROM elixir:1.9.1

SHELL ["/bin/bash", "-c"]

RUN touch ~/.bashrc && cd /tmp \
&& wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash \
&& source ~/.bashrc \
&& nvm install \
&& apt update \
&& apt install -y inotify-tools

RUN mix local.hex --force && mix local.rebar --force && mix archive.install phx_new

RUN mkdir -p /work/projects
WORKDIR /work/projects
