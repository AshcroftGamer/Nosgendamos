const express = require("express");
const app = express();

app.get('/', (req, res) =>{
    res.send("maria baixinha");
});

app.listen(3000, ()=>{
   "http://localhost:3000";
});