cd helm
helm upgrade -n bl --create-namespace -i bl-cmp . -f values.yaml
cd ..
