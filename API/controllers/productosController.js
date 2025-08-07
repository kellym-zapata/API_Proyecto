const db = require('../db');

// Obtener todos los productos
exports.obtenerProductos = (req, res) => {
  const sql = `
    SELECT 
      p.id, p.referencia, p.descripcion, p.precio, p.stock, p.fecha_creacion,
      c.nombre AS categoria,
      cl.nombre AS clase
    FROM productos p
    JOIN categoria c ON p.categoria_id = c.id
    JOIN clase cl ON p.clase_id = cl.id
    WHERE p.activo = 1
  `;

  db.query(sql, (err, rows) => {
    if (err) return res.status(500).json({ error: err });
    res.json(rows);
  });
};

// Consultar producto por referencia
exports.obtenerProductoPorReferencia = (req, res) => {
  const { referencia } = req.params;

  const sql = `
    SELECT 
      p.id, p.referencia, p.descripcion, p.precio, p.stock, p.fecha_creacion,
      c.nombre AS categoria,
      cl.nombre AS clase
    FROM productos p
    JOIN categoria c ON p.categoria_id = c.id
    JOIN clase cl ON p.clase_id = cl.id
    WHERE p.referencia = ? AND p.activo = 1
  `;

  db.query(sql, [referencia], (err, results) => {
    if (err) return res.status(500).json({ error: err });
    if (results.length === 0) {
      return res.status(404).json({ mensaje: 'Producto no encontrado' });
    }
    res.json(results[0]);
  });
};

// Crear un producto
exports.crearProducto = (req, res) => {
  const { referencia, descripcion, categoria_id, clase_id, precio, stock } = req.body;

  const sql = `
    INSERT INTO productos (referencia, descripcion, categoria_id, clase_id, precio, stock, activo)
    VALUES (?, ?, ?, ?, ?, ?, 1)
  `;

  db.query(sql, [referencia, descripcion, categoria_id, clase_id, precio, stock], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.status(201).json({ mensaje: 'Producto creado', id: result.insertId });
  });
};

// Actualizar un producto por referencia
exports.actualizarProductoPorReferencia = (req, res) => {
  const { referencia } = req.params;
  const { descripcion, categoria_id, clase_id, precio, stock, activo } = req.body;

  const sql = `
    UPDATE productos 
    SET descripcion = ?, categoria_id = ?, clase_id = ?, precio = ?, stock = ?, activo = ?
    WHERE referencia = ?
  `;

  db.query(sql, [descripcion, categoria_id, clase_id, precio, stock, activo, referencia], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ mensaje: 'Producto actualizado por referencia' });
  });
};

// Eliminar (lógicamente) un producto por referencia
exports.eliminarProductoPorReferencia = (req, res) => {
  const { referencia } = req.params;

  const sql = `UPDATE productos SET activo = 0 WHERE referencia = ?`;

  db.query(sql, [referencia], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ mensaje: 'Producto eliminado por referencia' });
  });
};
