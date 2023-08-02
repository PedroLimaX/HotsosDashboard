const express = require('express');
const cors = require('cors');
const morgan= require('morgan');
const config = require('./config');

// RUTAS MODULOS

const reportes = require('./modulos/reportes/rutas')
const types = require('./modulos/types/rutas')
const issues = require('./modulos/issues/rutas')
const priorities = require('./modulos/priorities/rutas')
const assigned = require('./modulos/assigned/rutas')
const room = require('./modulos/room/rutas')
const house = require('./modulos/house/rutas')
const guests = require('./modulos/guests/rutas')
const year = require('./modulos/year/rutas')
const month = require('./modulos/month/rutas')
const week = require('./modulos/week/rutas')
const usuarios = require('./modulos/usuarios/rutas')
const auth = require('./modulos/auth/rutas')
const error = require('./red/errors');


const app = express();

var corsOptions = {
  origin: '*',
  optionsSuccessStatus: 200
}

//Middleware
app.use(cors(corsOptions));
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: true}));

//configuracion
app.set('port', config.app.port);


//RUTAS API

app.use('/api/reportes', reportes);
app.use('/api/types', types);
app.use('/api/issues', issues);
app.use('/api/priorities', priorities);
app.use('/api/assigned', assigned);
app.use('/api/room', room);
app.use('/api/house', house);
app.use('/api/guests', guests);
app.use('/api/year', year);
app.use('/api/month', month);
app.use('/api/week', week);
app.use('/api/usuarios', usuarios);
app.use('/api/auth', auth);
app.use(error);

module.exports = app;