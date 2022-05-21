docker build -t neeraj76/django:base-0.1 .

docker run -it --entrypoint=/bin/bash neeraj76/django:base-0.1


docker run -d -it neeraj76/django:base-0.1
docker attach <container_id>