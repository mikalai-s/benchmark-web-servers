docker kill node1
docker rm -f node1
docker build -t node1 -f node/Dockerfile1 ./node
docker run --name node1 -p 5011:5011 --cpuset-cpus="0" -d node1

docker kill go1
docker rm -f go1
docker build -t go1 -f go/Dockerfile1 ./go
docker run --name go1 -p 5012:5012 --cpuset-cpus="0" -d go1

docker kill erlang1
docker rm -f erlang1
docker build -t erlang1 -f erlang/Dockerfile1 ./erlang
docker run --name erlang1 -p 5013:5013 --cpuset-cpus="0" -d erlang1

./bmark.sh