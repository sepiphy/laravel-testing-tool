# About

Providing the environment to test Laravel Framework core code.

## Installation

Build docker images locally.

```bash
docker build ./php7.2 -t sepiphy/laravel_testing_php7.2
```

Create a new bridge work named "laravel_testing_network".

```bash
docker network create --driver bridge laravel_testing_network
```

Start a redis container named "laravel_testing_redis".

```bash
# A redis container is required to test some components including Cache, Queue and Redis.
docker run -d --name laravel_testing_redis --network laravel_testing_network redis
```

Start a memcached container named "laravel_testing_memcached".

```bash
# A memcached container is required to test component Cache.
docker run -d --name laravel_testing_memcached --network laravel_testing_network memcached
```

Start a MySQL container named "laravel_testing_mysql".

```bash
docker run -d --name laravel_testing_mysql --network laravel_testing_network -e MYSQL_ROOT_PASSWORD=secret mysql
```

## Usage

Export the fully path to the Laravel Framework core code.
```bash
export LARAVEL_FRAMEWORK_PATH = "$HOME/Code/GitHub/laravel/framework
```

Execute the test script with your expected version.
```bash
./test 5.8 # Laravel version 5.8
```
