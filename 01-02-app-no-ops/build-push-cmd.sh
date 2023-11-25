#docker command to build and push 

docker build -t songkornd/golang-app:demo .

docker login -u "$USERNAME" -p "$PASSWORD"

docker push songkornd/golang-app:demo
