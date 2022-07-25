const route = require('express').Router();

const controller = require('../controller/prestador_controller')

route.get('/', controller.getAll);

module.exports = route;