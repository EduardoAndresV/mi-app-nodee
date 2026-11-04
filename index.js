const express = require('express');
const app = express();

// Cloud Run asigna dinámicamente un puerto a través de la variable de entorno PORT, 
// por lo que debemos escuchar en process.env.PORT o usar el puerto 8080 por defecto.
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('¡Hola Mundo desde Node.js con doker desplegado con GitHub Actions!');
});

app.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});