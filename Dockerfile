# Usamos una imagen oficial y ligera de Node.js
FROM node:20-slim

# Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de dependencias
COPY package*.json ./

# Instalamos únicamente las dependencias de producción
RUN npm install --production

# Copiamos el resto del código fuente de la aplicación
COPY . .

# Cloud Run espera que la app escuche en el puerto 8080 por defecto
EXPOSE 8080

# Comando para iniciar la aplicación cuando encienda el contenedor
CMD ["npm", "start"]