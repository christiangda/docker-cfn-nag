[![Docker Pulls](https://img.shields.io/docker/pulls/christiangda/cfn-nag.svg)](https://hub.docker.com/r/christiangda/cfn-nag/)
[![Docker Stars](https://img.shields.io/docker/stars/christiangda/cfn-nag.svg)](https://hub.docker.com/r/christiangda/cfn-nag/)
[![](https://images.microbadger.com/badges/version/christiangda/cfn-nag.svg)](https://microbadger.com/images/christiangda/cfn-nag "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/christiangda/cfn-nag.svg)](https://microbadger.com/images/christiangda/cfn-nag "Get your own image badge on microbadger.com")

# docker-cfn-nag

Just another [cfn-nag](https://github.com/stelligent/cfn_nag) [docker image](https://docs.docker.com/engine/reference/commandline/images/)

[Dockerhub repo](https://hub.docker.com/r/christiangda/cfn-nag)

[Github repo](https://github.com/christiangda/docker-cfn-nag)


## Impatients

Getting container image

```
docker pull christiangda/cfn-nag
```

Run to show the help
```
docker run --tty --interactive --rm --name cfn-nag --volume $(pwd):/work  christiangda/cfn-nag

```

Validate one template file
```
docker run --tty --interactive --rm --name cfn-nag --volume $(pwd):/work  christiangda/cfn-nag --input-path <path to cloudformation json>

```

# Table of Contents

- [docker-cfn-nag](#docker-cfn-nag)
  - [Impatients](#impatients)
- [Table of Contents](#table-of-contents)
- [Description](#description)
- [Tags](#tags)
  - [Lastest Version Tags](#lastest-version-tags)
- [Exports](#exports)
  - [Volumes](#volumes)
- [Setup](#setup)
  - [Setup Requirements](#setup-requirements)
- [Usage](#usage)
  - [Beginning with this container](#beginning-with-this-container)
  - [Tips: If you want to use it as a command](#tips-if-you-want-to-use-it-as-a-command)
- [Development](#development)
- [This is possible thanks to](#this-is-possible-thanks-to)
- [Authors](#authors)
  - [License](#license)

# Description

This is a [docker's image](https://docs.docker.com/engine/reference/commandline/images/) available in different [cfn-nag](https://github.com/stelligent/cfn_nag) versions, thanks to this you can select your best flavor for the most appropriate environment.


# Tags

## Lastest Version Tags

* 0.3.55, latest (Ruby 2.4) [Dockerfile](https://raw.githubusercontent.com/christiangda/docker-cfn-nag/master/Dockerfile)

# Exports

## Volumes

* /work --> Working directory

# Setup

## Setup Requirements

Download the image

```bash
docker pull christiangda/cfn-nag
```

# Usage

## Beginning with this container

```bash
docker run --tty --interactive --rm \
  --name cfn-nag \
  --volume $(pwd):/work \
  christiangda/cfn-nag
```

## Tips:  If you want to use it as a command

```bash
echo "# cfn-nag tool" >> ~/.bashrc
echo "alias cfn_nag_scan='docker run -ti -v $(pwd):/work christiangda/cfn-nag'" >> ~/.bashrc
source ~/.bashrc
```
# Development

If you want to cooperate with this project, please visit [my Github Repo](https://github.com/christiangda/docker-cfn-nag) and fork it, then made your own
chagest and prepare a git pull request

To build this container, you can execute the following command

```bash
git clone https://github.com/christiangda/docker-cfn-nag
cd docker-cfn-nag/
docker build --no-cache --rm --tag <your name>/cfn-nag
```

the parametrized procedure is

```bash
git clone https://github.com/christiangda/docker-cfn-nag
cd docker-cfn-nag/
docker build --no-cache --rm \
            --build-arg CFN_NAG_VERSION=0.3.55 \
            --tag <your name>/cfn-nag:0.3.55 \
            --tag <your name>/cfn-nag:latest .
```

# This is possible thanks to

* [stelligent/cfn_nag](https://github.com/stelligent/cfn_nag)

# Authors

[Christian González Di Antonio](https://github.com/christiangda)


## License

This module is released under the MIT:

* [https://opensource.org/licenses/MIT](https://opensource.org/licenses/MIT)
