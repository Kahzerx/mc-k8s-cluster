cd helm
helm upgrade -n oc --create-namespace -i oc-evt . -f values.yaml
cd ..
