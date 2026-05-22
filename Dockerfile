FROM node:20-alpine

WORKDIR /app

RUN npm install -g serve

COPY index.html .

EXPOSE 3003

# Sintaxis estándar para escuchar en 0.0.0.0 en el puerto 3003
CMD ["serve", "-l", "3003", "0.0.0.0"]