docker build -t myk3s/multi-client-k8s:latest -t myk3s/multi-client-k8s:$SHA -f ./client/Dockerfile ./client
docker build -t myk3s/multi-server-k8s:latest -t myk3s/multi-server-k8s:$SHA -f ./server/Dockerfile ./server
docker build -t myk3s/multi-worker-k8s:latest -t myk3s/multi-worker-k8s:$SHA -f ./worker/Dockerfile ./worker

docker push myk3s/multi-client-k8s:latest
docker push myk3s/multi-server-k8s:latest
docker push myk3s/multi-worker-k8s:latest

docker push myk3s/multi-client-k8s:$SHA
docker push myk3s/multi-server-k8s:$SHA
docker push myk3s/multi-worker-k8s:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=myk3s/multi-server-k8s:$SHA
kubectl set image deployments/client-deployment client=myk3s/multi-client-k8s:$SHA
kubectl set image deployments/worker-deployment worker=myk3s/multi-worker-k8s:$SHA