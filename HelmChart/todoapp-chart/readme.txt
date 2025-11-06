#Create NS for helm chart
kubectl create namespace helmns
#test it
helm install todoapp-release todoapp-chart/ --namespace helmns --dry-run --debug 


deploy prometheus and grafana

steps:

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm search repo prometheus-community



kubectl create ns monitoring
helm install todo-prom prometheus-community/kube-prometheus-stack -n monitoring




to access the prometheus dashboard:
kubectl -n monitoring port-forward prometheus-todo-prom-kube-prometheus-prometheus-0 9090:9090

to access the grafan dashboard:
kubectl -n monitoring port-forward todo-prom-grafana-56c6d96b45-jvsv2 3000

Note: change the above pod name