const express = require("express");
const app = express();
const bodyparser = require('body-parser');
require("dotenv/config");

app.use( bodyparser.urlencoded( { extended: true } ) );
app.use( bodyparser.json() );
app.use( express.json() );




const estabelecimento = require('./routes/estabelecimento_route');
const prestador = require('./routes/prestador_route');
const servicos = require('./routes/servicos_route');

app.use('/estabelecimento', estabelecimento);
app.use('/prestador', prestador);
app.use('/servicos', servicos);




app.get('/', (req, res) =>{
    res.send("maria baixinha");
});




app.listen(process.env.PORT, ()=>{
    console.log("http://localhost:3000");
});