#Create NS for helm chart
kubectl create namespace helmns
#test it
helm install todoapp-release todoapp-chart/ --namespace helmns --dry-run --debug
