echo "Installing Composer dependencies..."
docker run --rm --volume $PWD:/app --volume ~/.composer:/tmp composer install