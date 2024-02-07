docker build -f Dockerfile.dev
docker build -f Dockerfile.dev -t USERNAME:frontend .
docker run -it IMAGEID npm run test
docker run -p 3000:3000 IMAGEID 
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app IMAGEID     (${PWD} in Powershell)
docker run -it -p 3000:3000 -v /home/node/app/node_modules -v ~/frontend:/home/node/app USERNAME:frontend
docker run -it -p 3000:3000 -v /home/node/app/node_modules -v /home/YOURUSERNAME/frontend:/home/node/app USERNAME:frontend
docker exec -it CONTAINERID npm run test
localhost:3000

docker build -f Dockerfile.dev
docker build -f Dockerfile.dev -t USERNAME:frontend .
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app IMAGEID     (${PWD} in Powershell)
docker run -it -p 3000:3000 -v /home/node/app/node_modules -v ~/frontend:/home/node/app USERNAME:frontend
docker run -it -p 3000:3000 -v /home/node/app/node_modules -v /home/YOURUSERNAME/frontend:/home/node/app USERNAME:frontend
docker-compose up
localhost:3000

docker build .
docker run -p 8080:80 IMAGEID
localhost:8080