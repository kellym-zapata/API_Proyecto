const bcrypt = require('bcryptjs');
const db = require('../db');

// Obtener todos los usuarios con su rol
exports.obtenerUsuarios = (req, res) => {
  const sql = `
    SELECT 
      u.id, u.username, u.nombre_completo, r.nombre AS rol, u.activo
    FROM usuarios u
    JOIN roles r ON u.rol_id = r.id
    WHERE u.activo = 1
  `;

  db.query(sql, (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

// Obtener usuario por username
exports.obtenerUsuarioPorUsername = (req, res) => {
  const { username } = req.params;

  const sql = `
    SELECT 
      u.id, u.username, u.nombre_completo, r.nombre AS rol, u.activo
    FROM usuarios u
    JOIN roles r ON u.rol_id = r.id
    WHERE u.username = ? AND u.activo = 1
  `;

  db.query(sql, [username], (err, results) => {
    if (err) return res.status(500).json({ error: err });
    if (results.length === 0) {
      return res.status(404).json({ mensaje: 'Usuario no encontrado' });
    }
    res.json(results[0]);
  });
};

// Crear nuevo usuario
exports.crearUsuario = (req, res) => {
  const { username, nombre_completo, password, rol_id } = req.body;

  if (!username || !nombre_completo || !password || !rol_id) {
    return res.status(400).json({ error: 'Todos los campos son obligatorios' });
  }

  const hashedPassword = bcrypt.hashSync(password, 10);

  const sql = `
    INSERT INTO usuarios (username, nombre_completo, password_hash, rol_id, activo)
    VALUES (?, ?, ?, ?, 1)
  `;

  db.query(sql, [username, nombre_completo, hashedPassword, rol_id], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.status(201).json({ mensaje: 'Usuario creado', id: result.insertId });
  });
};

// Actualizar usuario por username
exports.actualizarUsuarioPorUsername = (req, res) => {
  const { username } = req.params;
  const { nombre_completo, password, rol_id, activo } = req.body;

  const hashedPassword = password
    ? bcrypt.hashSync(password, 10)
    : null;

  const sql = `
    UPDATE usuarios SET 
      nombre_completo = ?, 
      password_hash = IFNULL(?, password_hash),
      rol_id = ?, 
      activo = ?
    WHERE username = ?
  `;

  db.query(sql, [nombre_completo, hashedPassword, rol_id, activo, username], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ mensaje: 'Usuario actualizado correctamente' });
  });
};

// Eliminar lógicamente un usuario por username
exports.eliminarUsuarioPorUsername = (req, res) => {
  const { username } = req.params;

  const sql = `UPDATE usuarios SET activo = 0 WHERE username = ?`;

  db.query(sql, [username], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ mensaje: 'Usuario eliminado correctamente' });
  });
};
