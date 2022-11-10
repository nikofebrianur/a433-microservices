# Menggunakan base image Node.js versi 14
FROM node:14 

# Working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host 
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start
CMD ["npm", "start"]

