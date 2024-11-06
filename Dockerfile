# Usa una imagen más ligera para la construcción y desarrollo
FROM node:18-alpine AS dev

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de dependencias
COPY package*.json ./

# Instalar todas las dependencias (producción y desarrollo)
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto 4200 para exponer el puerto de aplicacion
EXPOSE 4200

# Comando para iniciar la aplicacion
CMD ["npm", "run", "start"]
