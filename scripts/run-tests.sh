#!/usr/bin/env bash

echo '>>> Installing Laravel Framework depencencies.'
rm -rf $LARAVEL_FRAMEWORK_PATH/vendor $LARAVEL_FRAMEWORK_PATH/composer.lock

docker run -it --rm \
    --user $(id -u):$(id -g) \
    --volume $LARAVEL_FRAMEWORK_PATH:/app \
    --volume $PWD/storage/composer:/tmp \
    --workdir /app \
    sepiphylabs/laravel_testing_composer install --no-interaction --prefer-dist
echo # Add an empty line.

# Copy the customized configuration files.
cp phpunit.xml $LARAVEL_FRAMEWORK_PATH/

for PHP_VERSION in "7.1" "7.2" "7.3"
do
    # Checkout to the expected branch.
    echo ">>> Testing Laravel Framework with PHP v$PHP_VERSION."
    echo # Add an empty line.

    # Execute test scripts inside the container.
    docker run -it --rm \
        -v "$LARAVEL_FRAMEWORK_PATH":/usr/src/framework \
        -w /usr/src/framework \
        -u $(id -u ${USER}):$(id -g ${USER}) \
        --network laravel_testing_network \
        "sepiphylabs/laravel_testing_php$PHP_VERSION" \
        /bin/bash -c "php --version && php vendor/bin/phpunit"
    echo # Add an empty line.
done

# Remove the customized configuration files.
rm $LARAVEL_FRAMEWORK_PATH/phpunit.xml
