#Membuat Docker image
docker build -t item-app:v1 .

#Melihat daftar image
docker images

#Mengubah nama image sesuai format Docker Hub
docker tag item-app:v1 12903478/item-app:v1

#Login ke Docker Hub
echo $PASS_DOCKER_HUB | docker login -u nikofebrianur --password-stdin

#Mengunggah image ke Docker Hub
docker push 12903478/item-app:v1
