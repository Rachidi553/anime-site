// app.js
const bodyParser = require('body-parser');
const port = 3000;

const express = require('express');
const app = express();
app.use(express.static('public'));
app.get('/anime-list', async (req, res) => {
    // Aquí suponemos que obtienes los datos de tu base de datos
    const animes = await db.query('SELECT * FROM Anime');
    res.render('anime', { animes });
});

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));
app.set('view engine', 'ejs');

// Ruta principal
app.get('/', (req, res) => {
    res.redirect('/login');  // Redirige a la página de inicio de sesión
});

// Routes
const userRoutes = require('./routes/users');
const loginRoutes = require('./routes/login');
const animeRoutes = require('./routes/anime'); // Añadir la nueva ruta

app.use('/users', userRoutes);
app.use('/login', loginRoutes);
app.use('/anime', animeRoutes); // Usar la nueva ruta

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
