docker build -t myk3s/simpleweb .

docker run myk3s/simpleweb 
docker run -it myk3s/simpleweb sh 
docker run -p 8080:8080 myk3s/simpleweb

docker exec -it myk3s/simpleweb sh

localhost:8080