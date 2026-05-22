FROM node:20-alpine

WORKDIR /app

RUN npm install -g serve

COPY index.html .

EXPOSE 3003

# Cambiamos esto para forzar la escucha en 0.0.0.0
CMD ["serve", "-l", "3003", "-b", "0.0.0.0"]