# About

Providing the environment to test Laravel Framework core code.

## Installation

Build necessary docker images locally.

```bash
./build # bash build
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

Execute the test script. Current supported PHP versions are 7.1, 7.2 and 7.3.

```bash
./test # bash test
```
