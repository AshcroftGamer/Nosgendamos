const express = require("express");
const app = express();


require("dotenv/config");
app.get('/', (req, res) =>{
    res.send("maria baixinha");
});






app.listen(process.env.PORT, ()=>{
    console.log("http://localhost:3000");
});