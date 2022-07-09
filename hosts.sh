IP=$(minikube ip)
echo "Add this to your /etc/hosts:"
echo "$IP  kzx.com"
echo "$IP  kubeview.kzx.com"
echo "$IP  grafana.kzx.com"
echo "$IP  alertmanager.kzx.com"
echo "$IP  prometheus.kzx.com"
echo "$IP  maps.kzx.com"
echo "$IP  oc4-smp.kzx.com"
echo "$IP  oc-cmp.kzx.com"
echo "$IP  oc-evt.kzx.com"
echo "Insert this on your /etc/docker/daemon.json"
echo {
echo "insecure-registries" : ["kzx.com:5000"]
echo }
