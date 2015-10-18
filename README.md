# Make Config Drive

[![Docker Pulls](https://img.shields.io/docker/pulls/akiel/mk-config-drive.svg)](https://hub.docker.com/r/akiel/mk-config-drive/)

## Usage

Go into a directory with cloud config YAML files (must use the extension *.yml) and run:

```sh
docker run --rm -v $(pwd):/config akiel/mk-config-drive
```

You will end up with one ISO per YAML file. Thats it!

### Build only a single ISO

To build only a single ISO from a single YAML file, you can use the `$FILE` env var. This is useful if you use `mk-config-drive` from a Makefile.

```sh
docker run --rm -v $(pwd):/config -e FILE=my.yml akiel/mk-config-drive
```
