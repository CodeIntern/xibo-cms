echo "Installing NPM dependencies..."
docker run -it --rm --volume $PWD:/app --volume ~/.npm:/root/.npm -w /app node:latest sh -c "npm install webpack -g; npm install; npm run build;"