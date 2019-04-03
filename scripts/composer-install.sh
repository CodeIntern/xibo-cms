echo "Installing Composer dependencies..."
docker run --rm --interactive --tty --volume $PWD:/app --volume ~/.composer:/tmp composer install