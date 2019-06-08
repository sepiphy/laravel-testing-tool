The environment to test Laravel Framework core code.

## Requirements

- Docker >=18.09.3

## Installation

Clone this repository.

```bash
cd /path/to/workdir

git clone git@github.com:sericode/laravel-testing-tool.git

cd laravel-testing-tool
```

Build necessary docker images locally.

```bash
bash scripts/build-images.sh
```

## Usage

Start various services including MySQL, Memcached and Redis.

```bash
bash scripts/start-services.sh
```

Prepare the fully path to the Laravel Framework core code.

```bash
export LARAVEL_FRAMEWORK_PATH="$HOME/Documents/GitHub/laravel/framework
```

Execute the `run-tests` script.

```bash
bash scripts/run-tests.sh
```

## Contributing

Please read the [contribution guide](https://seriquynh.com/oss/contributing?github=sericode/laravel-testing-tool) for more information.

## License

Please read the [MIT license](LICENSE.md) for more information.
