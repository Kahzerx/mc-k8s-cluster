cd helm
helm upgrade -n oc --create-namespace -i oc-cmp . -f values.yaml
cd ..
