# image_tag=neeraj76/django:postgres-0.1

docker build -t neeraj76/django:postgres-0.1 .

# Run Container Method-1
docker run -d -it <image_tag>
docker attach <container_id>

# Run Container Method-2
docker run -it --entrypoint=/bin/bash <image_tag>