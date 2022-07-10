cd helm
helm upgrade -n oc --create-namespace -i oc-bg . -f values.yaml
cd ..
