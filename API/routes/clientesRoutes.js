const express = require('express');
const router = express.Router();
const controller = require('../controllers/clientesController');

// GET: Obtener todos los clientes
router.get('/', controller.obtenerClientes);

// GET: Obtener cliente por documento
router.get('/:documento', controller.obtenerClientePorDocumento);

// POST: Crear cliente
router.post('/', controller.crearCliente);

// PUT: Actualizar cliente
router.put('/:documento', controller.actualizarCliente);

// DELETE: Eliminar cliente
router.delete('/:documento', controller.eliminarCliente);

module.exports = router;
