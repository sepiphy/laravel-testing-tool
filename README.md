# About

Providing the environment to test Laravel Framework core code.

## Installation

Build necessary docker images locally.

```bash
bash scripts/build-images.sh
```

## Usage

Start some services including MySQL, Memcached and Redis.

```bash
bash scripts/start-services.sh
```

Export the fully path to the Laravel Framework core code.

```bash
export LARAVEL_FRAMEWORK_PATH="$HOME/Documents/Code/GitHub/laravel/framework
```

Execute the `run-tests` script.

```bash
bash scripts/run-tests.sh
```
