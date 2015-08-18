# Make Cloud Config

## Usage

Go into a directory with cloud config YAML files (must use the extension *.yml) and run:

```sh
docker run -v $(pwd):/config akiel/mk-config-drive
```

You will end up with one ISO per YAML file. Thats it!
