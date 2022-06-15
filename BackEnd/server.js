
const express = require('express');
const cors = require('cors');
const app = express();
const pool = require('./conexion');
const api = require('../BackEnd/shared/Rutas');
const { response } = require('express');

app.use(cors({
    origin: "*",
    methods: ['GET','POST','DELETE','UPDATE','PUT','PATCH']
}));

var port = process.env.port || 8080

app.get('/', function(req, res) {
    res.json({mensaje: 'Hola mundo'});
});

app.get(api.Manuales.listaManual, function (req, res) {
    let index = Number(req.params.Pageindex);
    let Size = Number(req.params.PageSize);
    let titulo = req.params.Manual_Titulo ? '': '';
    console.log(titulo);
      
    pool.query("Call sp_ListaManuales(?, ?, ?)", [index, Size, titulo ],  (error, resultado) => {
           if ( error ) throw error;  
        res.json(resultado[0]);        
    });
    
});


app.listen(port, ()=>{
    console.log('API escuchando en el puerto ' + port);
});







