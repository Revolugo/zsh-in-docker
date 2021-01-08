# Oh My Zsh Installer for Docker

[![Last Release](https://img.shields.io/github/v/release/deluan/zsh-in-docker?label=latest&style=flat-square)](https://github.com/deluan/zsh-in-docker/releases/latest)
[![Build](https://img.shields.io/github/workflow/status/deluan/zsh-in-docker/CI?style=flat-square)](https://github.com/deluan/zsh-in-docker/actions)
[![Downloads](https://img.shields.io/github/downloads/deluan/zsh-in-docker/total?style=flat-square)](https://github.com/deluan/zsh-in-docker/releases)


This is a script to automate [Oh My Zsh](https://ohmyz.sh/) installation in development containers.
Works with any images based on Alpine, Ubuntu, Debian, CentOS or Amazon Linux.

The original goal was to simplify setting up `zsh` and Oh My Zsh in a Docker image for use with [VSCode's Remote Containers
extension](https://code.visualstudio.com/docs/remote/containers), but it can be used whenever you
need a simple way to install Oh My Zsh and its plugins in a Docker image

## Usage

One line installation: add the following line in your `Dockerfile`:

```Dockerfile
# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"
```