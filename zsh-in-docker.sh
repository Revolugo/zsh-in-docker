#!/bin/sh
set -e

wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh -- \
    -t https://github.com/bhilburn/powerlevel9k\
    -p https://github.com/bobthecow/git-flow-completion \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-syntax-highlighting \
    -p https://github.com/zsh-users/zsh-completions \
    -a 'export TERM="xterm-256color"' \
    -a 'POWERLEVEL9K_PROMPT_ON_NEWLINE=true' \
    -a 'POWERLEVEL9K_PROMPT_ADD_NEWLINE=true' \
    -a 'POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)' \
    -a 'POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)' \
    -a 'POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"'

apt-get install git-flow