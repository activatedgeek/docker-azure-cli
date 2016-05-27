# azure-cli

| [![Build Status](https://travis-ci.org/activatedgeek/docker-azure-cli.svg?branch=master)](https://travis-ci.org/activatedgeek/docker-azure-cli) | [![](https://imagelayers.io/badge/activatedgeek/azure-cli:latest.svg)](https://imagelayers.io/?images=activatedgeek/azure-cli:latest 'Get your own badge on imagelayers.io') |
|:-:|:-:|

An [`azure-cli`](https://github.com/Azure/azure-xplat-cli) image based on Alpine Docker.

The container contains the following:
* `Node` (6.x)
* `Azure CLI` ()

## Images
* `latest`, `0.1`, `0.1.0` ([Dockerfile](./Dockerfile))

## Usage
Pull the docker image from Docker hub as:
```
$ docker pull activatedgeek/azure-cli
```
By default, this will pull the latest image.

The run command looks like:
```
$ docker run --rm activatedgeek/azure-cli:latest --version
```

To persist the state changes like `login`, you must use the volume mount
to `/root/.azure` folder and make it writeable.

A sample command looks like:
```
$ docker run --rm -v $(pwd)/.azure:/root/.azure:rw activatedgeek/azure-cli:devel login
```

Next, try listing accounts as:
```
$ docker run --rm -v $(pwd)/.azure:/root/.azure:rw activatedgeek/azure-cli:devel account list
```

which should produce output something like:
```
info:    Executing command account list
data:    Name           Id                                    Current  State  
data:    -------------  ------------------------------------  -------  -------
data:    BizSpark       xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx  true    Enabled
info:    account list command OK
```

## Build
To build the latest image from source, run
```
$ make devel
```
