const express = require('express');

const app = express();

app.get('/test', (req, res) => {
  res.send('this is our server');
});

app.listen(3000, () => {
  console.log('server started');
});
