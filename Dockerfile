FROM node:20-alpine

WORKDIR /app

COPY index.html .

EXPOSE 3003

# Levantamos un servidor web nativo de Node.js en el puerto 3003 y abriendo la red a 0.0.0.0
CMD ["node", "-e", "const fs = require('fs'); require('http').createServer((req, res) => { res.writeHead(200, { 'Content-Type': 'text/html' }); res.end(fs.readFileSync('index.html')); }).listen(3003, '0.0.0.0', () => console.log('Servidor corriendo de forma segura en http://0.0.0.0:3003'));"]