const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('magic');
});

app.get('/test', (req, res) => {
  res.send('this is our server test');
});

app.listen(3000, () => {
  console.log('server started');
});

// створення образу на основі Dockerfile
// docker build -t basic_server:0.0.1 .