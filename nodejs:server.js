const express = require('express');
const app = express();
app.use(express.json());

app.post('/webhook', (req, res) => {
  console.log('Webhook:', req.body);
  res.status(200).send('OK');
});

app.listen(8000, () => console.log('Server running on port 8000'));
