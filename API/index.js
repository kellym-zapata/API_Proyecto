const express = require('express');
const app = express();
const cors = require('cors');
const PORT = 3000;

// Rutas externas
const productosRoutes = require('./routes/productosRoutes');
const usuariosRoutes = require('./routes/usuariosRoutes');
const clientesRoutes = require('./routes/clientesRoutes');

// Middlewares
app.use(cors());
app.use(express.json());

// Rutas principales
app.use('/api/productos', productosRoutes);
app.use('/api/usuarios', usuariosRoutes);
app.use('/api/clientes', clientesRoutes);

// Ruta raíz opcional
app.get('/', (req, res) => {
  res.send('API REST funcionando correctamente');
});

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
