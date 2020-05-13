Building the image:

docker build . -t nrr:latest

Running the image:

docker run --runtime=nvidia -v "$(pwd)/images:/home/nrr/images" -v "$(pwd)/results:/home/nrr/results" -v "$(pwd)/models:/home/nrr/models" nrr:latest -i ./images/XXX.jpg -m ./models/newspapers/ -o ./results
