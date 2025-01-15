const express = require('express');
const app = express();

const PORT = process.env.PORT || 5000;

// Sample data
const customers = [
  { name: 'John Doe', email: 'john@example.com' },
  { name: 'Jane Smith', email: 'jane@example.com' },
];

// API endpoint
app.get('/api/customers', (req, res) => {
  res.json(customers);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
