// server.js
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello how are you, I am unnati nathani'));

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});

