docker build -t web-map .
docker tag web-map kzx.com:5000/web-map
docker push kzx.com:5000/web-map
