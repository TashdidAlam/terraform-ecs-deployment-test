const express = require('express');
const app = express();

app.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
    next();
});

// Hard-Coded for demo
const CONTACTS = [
    {
        "name": "Foo Bar",
        "email": "foobar@test.com",
        "cell": "555-123-4567"
    },
    {
        "name": "Biz Baz",
        "email": "bizbaz@test.com",
        "cell": "555-123-5678"
    },
    {
        "name": "Bing Bang",
        "email": "bingbang@test.com",
        "cell": "555-123-6789"
    }
];

// Serve static files from the 'public' directory
app.use(express.static('public'));

// Endpoint to get contacts
app.get('/contacts', (req, res) => {
    res.json(CONTACTS);
});

// Serve the HTML page
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
