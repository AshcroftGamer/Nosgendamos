const express = require("express");
const app = express();
require("dotenv/config");
const bodyparser = require('body-parser');

app.use( bodyparser.urlencoded( { extended: true } ) );
app.use( bodyparser.json() );
app.use( express.json() );

const prestador = require('./routes/prestador_route');
app.use('/prestador', prestador);

app.get('/', (req, res) =>{
    res.send("maria baixinha");
});




app.listen(process.env.PORT, ()=>{
    console.log("http://localhost:3000");
});