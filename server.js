const express = require("express");
const app = express();

const PORT = process.env.PORT || 8888;

app.get("/", (req, res) => {
    res.send(`
             <h1>Docker + Node</h1>
             <span>A match mode in the cloud</span>
             `);
});

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}...`);
});
