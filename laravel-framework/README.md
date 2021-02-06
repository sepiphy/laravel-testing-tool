Clone repository and change `laravel-framework` as working directory

    $ git clone https://github.com/seriquynh/php-test-tool.git
    $ cd php-test-tool/laravel-framework

Clone laravel framework repository

    $ git clone https://github.com/laravel/framework.git /path/to/laravel-framework
    $ git checkout 5.8 # Checkout to version you want to test

Copy .env from .env.example and change REPOSITORY variable

```
REPOSITORY=/path/to/laravel-framework
```

Start docker containers

    $ docker-compose up -d

Run the test script

    $ docker-compose exec php /bin/bash
    $ ./runtest
