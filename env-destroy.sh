source environment-setup.cfg

docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
