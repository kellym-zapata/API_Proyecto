const express = require('express');
const router = express.Router();
const controller = require('../controllers/productosController');

// GET: Listar todos los productos
router.get('/', controller.obtenerProductos);

// GET: Consultar producto por referencia
router.get('/ref/:referencia', controller.obtenerProductoPorReferencia);

// POST: Crear un nuevo producto
router.post('/', controller.crearProducto);

// PUT: Actualizar producto por referencia
router.put('/ref/:referencia', controller.actualizarProductoPorReferencia);

// DELETE: Eliminar lógicamente por referencia
router.delete('/ref/:referencia', controller.eliminarProductoPorReferencia);

module.exports = router;
