cd helm
helm upgrade -n web-map --create-namespace -i web-map . -f values.yaml
cd ..
