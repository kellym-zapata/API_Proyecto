const express = require('express');
const router = express.Router();
const controller = require('../controllers/usuariosController');

// GET: Listar usuarios activos
router.get('/', controller.obtenerUsuarios);

// GET: Consultar usuario por username
router.get('/:username', controller.obtenerUsuarioPorUsername);

// POST: Crear usuario
router.post('/', controller.crearUsuario);

// PUT: Actualizar usuario por username
router.put('/:username', controller.actualizarUsuarioPorUsername);

// DELETE: Eliminar usuario por username (lógico)
router.delete('/:username', controller.eliminarUsuarioPorUsername);

module.exports = router;
