alias kubectl="minikube kubectl --"

minikube delete

minikube start --cpus='max' --disk-size='200gb' --memory='max' --insecure-registry "10.0.0.0/24"

sleep 20

minikube addons enable registry && minikube addons enable ingress && kubectl apply -f registry/registry.yaml && kubectl apply -f registry/internal_hosts.yaml

sleep 30

cd web-map/ && ./build.sh && cd ..
cd minecraft/builds/1.19.2-0.14.10-fabric && ./build.sh && cd ../../..
cd minecraft/builds/mods-fabric && ./build.sh && cd ../../..
cd minecraft/builds/bungeecord && ./build.sh && cd ../../..
cd web-map && ./deploy.sh && cd ..
cd minecraft/servers/BL/SMP && ./deploy.sh && cd ../../../..
cd minecraft/servers/BL/CMP && ./deploy.sh && cd ../../../..
cd minecraft/proxies/BL/bungee && ./deploy.sh && cd ../../../..

helm repo add kubeview https://benc-uk.github.io/kubeview/charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm upgrade -n kubeview --create-namespace -i kubeview kubeview/kubeview -f kubeview/kubeview.yaml
helm upgrade -n loki --create-namespace -i loki grafana/loki-stack -f prometheus/loki-stack.yaml
helm upgrade -n prometheus-stack --create-namespace -i prometheus prometheus-community/kube-prometheus-stack -f prometheus/prometheus-stack.yaml

minikube dashboard
# kubectl delete pods -n prometheus-stack --field-selector=status.phase=Running