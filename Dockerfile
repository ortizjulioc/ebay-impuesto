FROM node:20-alpine

WORKDIR /app

# Instalamos el servidor estático ultra ligero globalmente
RUN npm install -g serve

# Copiamos tu index.html al contenedor
COPY index.html .

# Exponemos única y exclusivamente tu puerto deseado
EXPOSE 3003

# Comando para arrancar el servidor en el puerto 3003
CMD ["serve", "-l", "3003"]
