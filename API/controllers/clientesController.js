const db = require('../db');

// Obtener todos los clientes con descripciones relacionadas
exports.obtenerClientes = (req, res) => {
  const sql = `
    SELECT 
      c.documento, 
      c.nombre_completo,
      c.correo,
      c.telefono,
      c.fecha_nacimiento,
      c.direccion,
      td.nombre AS tipo_documento,
      s.descripcion AS sexo,
      d.nombre AS departamento,
      ciu.nombre AS ciudad
    FROM clientes c
    JOIN tipodocumento td ON c.id_tipodocumento = td.sg
    JOIN sexo s ON c.sexo = s.co
    LEFT JOIN departamento d ON c.id_departamento = d.id
    LEFT JOIN ciudad ciu ON c.id_ciudad = ciu.id
  `;

  db.query(sql, (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

// Obtener cliente por documento
exports.obtenerClientePorDocumento = (req, res) => {
  const { documento } = req.params;

  const sql = `
    SELECT 
      c.documento, 
      c.nombre_completo,
      c.correo,
      c.telefono,
      c.fecha_nacimiento,
      c.direccion,
      td.nombre AS tipo_documento,
      s.descripcion AS sexo,
      d.nombre AS departamento,
      ciu.nombre AS ciudad
    FROM clientes c
    JOIN tipodocumento td ON c.id_tipodocumento = td.sg
    JOIN sexo s ON c.sexo = s.co
    LEFT JOIN departamento d ON c.id_departamento = d.id
    LEFT JOIN ciudad ciu ON c.id_ciudad = ciu.id
    WHERE c.documento = ?
  `;

  db.query(sql, [documento], (err, results) => {
    if (err) return res.status(500).json({ error: err });
    if (results.length === 0) return res.status(404).json({ mensaje: 'Cliente no encontrado' });
    res.json(results[0]);
  });
};

// Crear cliente
exports.crearCliente = (req, res) => {
  const {
    documento,
    id_tipodocumento,
    nombre_completo,
    sexo,
    fecha_nacimiento,
    correo,
    telefono,
    id_departamento,
    id_ciudad,
    direccion
  } = req.body;

  const sql = `
    INSERT INTO clientes (
      documento, id_tipodocumento, nombre_completo, sexo, fecha_nacimiento,
      correo, telefono, id_departamento, id_ciudad, direccion
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
  `;

  db.query(sql, [
    documento, id_tipodocumento, nombre_completo, sexo, fecha_nacimiento,
    correo, telefono, id_departamento, id_ciudad, direccion
  ], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.status(201).json({ mensaje: 'Cliente creado correctamente' });
  });
};

// Actualizar cliente
exports.actualizarCliente = (req, res) => {
  const { documento } = req.params;
  const {
    id_tipodocumento,
    nombre_completo,
    sexo,
    fecha_nacimiento,
    correo,
    telefono,
    id_departamento,
    id_ciudad,
    direccion
  } = req.body;

  const sql = `
    UPDATE clientes SET 
      id_tipodocumento = ?, nombre_completo = ?, sexo = ?, fecha_nacimiento = ?,
      correo = ?, telefono = ?, id_departamento = ?, id_ciudad = ?, direccion = ?
    WHERE documento = ?
  `;

  db.query(sql, [
    id_tipodocumento, nombre_completo, sexo, fecha_nacimiento,
    correo, telefono, id_departamento, id_ciudad, direccion, documento
  ], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ mensaje: 'Cliente actualizado correctamente' });
  });
};

// Eliminar cliente (físicamente)
exports.eliminarCliente = (req, res) => {
  const { documento } = req.params;

  const sql = `DELETE FROM clientes WHERE documento = ?`;

  db.query(sql, [documento], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ mensaje: 'Cliente eliminado correctamente' });
  });
};
