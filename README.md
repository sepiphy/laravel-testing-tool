## About

Provide the environment to test Laravel Framework core code.

## Requirements

- Docker >=18.09.3

## Installation

Clone this repository.

```bash
cd /path/to/workdir

git clone git@github.com:sepiphylabs/laravel-testing-tool.git

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
export LARAVEL_FRAMEWORK_PATH="$HOME/Documents/Code/GitHub/laravel/framework
```

Execute the `run-tests` script.

```bash
bash scripts/run-tests.sh
```

## Contributing

- Thank you for considering contributing to `sepiphylabs/laravel-testing-tool` package!

- Feel free to submit an issue or a pull request for your expectation!

- All contributions are welcome and accepted via pull requests.

## License

- The `sepiphylabs/laravel-testing-tool` package is open-sourced software licensed under the [MIT license](LICENSE.md).
