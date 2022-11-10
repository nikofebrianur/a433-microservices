#Membuat Docker image
docker build -t item-app:v1 .

#Melihat daftar image
docker images

#Mengubah nama image sesuai format Docker Hub
docker tag item-app:v1 ghcr.io/nikofebrianur/item-app:v1

#Login ke Docker Hub
echo $CR_PAT | docker login ghcr.io -u nikofebrianur --password-stdin

#Mengunggah image ke Docker Hub
docker push ghcr.io/nikofebrianur/item-app:v1
