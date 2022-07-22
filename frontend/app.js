const express = require("express");
const app = express();
require("dotenv/config");



app.get('/', (req, res) =>{
    res.send("ok");
});

app.listen(process.env.PORT, ()=>{
    console.log("http://localhost:4000");
});