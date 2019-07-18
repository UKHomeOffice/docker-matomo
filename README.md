# COP Docker-Matomo

This Matomo is being developed by the UK Home Office. This Matomo is a web analytics software platform.

# Requirements

* matomo 3.10.0

# Usage

To use this matomo, first clone this repo

```
git@github.com:UKHomeOffice/docker-matomo.git
```

## Development with Docker
Once you've cloned the project, build the matomo Docker container

```sh
docker build -t matomo .
```

To run the resulting Docker container:

```sh
docker run -it matomo
```

