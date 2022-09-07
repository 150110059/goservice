docker build . -t docker344356/nestjs-k8s:latest 
docker login -u="docker344356" -p="*d*3443569"
docker push docker344356/nestjs-k8s:latest
rm -r -f nestjs-k8s-master/
git clone https://github.com/150110059/nestjs-k8s-master --branch master
cd nestjs-k8s-master
cd k8s
gcloud container clusters get-credentials autopilot-k8scluster --region us-central1 --project nestjs-k8s-359320
kubectl delete services --all
kubectl delete pods --all
kubectl delete deployments --all
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl get svc