# Oh My Zsh Installer for Docker

This is a script to automate [Oh My Zsh](https://ohmyz.sh/) installation in development containers.
Works with any images based on Alpine, Ubuntu, Debian, CentOS or Amazon Linux.

The original goal was to simplify setting up `zsh` and Oh My Zsh in a Docker image for use with [VSCode's Remote Containers
extension](https://code.visualstudio.com/docs/remote/containers), but it can be used whenever you
need a simple way to install Oh My Zsh and its plugins in a Docker image

## Usage

One line installation: add the following line in your `Dockerfile`:

```Dockerfile
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"
```