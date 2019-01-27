# About

Providing the environment to test Laravel Framework core code.

## Installation

Build docker images locally.

```bash
docker build ./php7.1 -t sepiphy/laravel5.8_php7.1_testing
docker build ./php7.2 -t sepiphy/laravel5.8_php7.2_testing
```

Create a new bridge work named "laravel_testing_network".

```bash
docker network create --driver bridge laravel_testing_network
```

Start a redis container named "laravel_testing_redis".

```bash
docker run -d --name laravel_testing_redis --network laravel_testing_network redis
```

## Usage

Run the script `test`

```bash
# ./test <laravel_version> <php_version>
./test laravel5.8_php7.2
```
