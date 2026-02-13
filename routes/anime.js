// routes/anime.js
const express = require('express');
const router = express.Router();
const sqlite3 = require('sqlite3').verbose();

const app = express();

app.get('/animes', async (req, res) => {
    const animes = await db.query('SELECT * FROM Anime');
    res.render('anime-list', { animes });
});

app.set('view engine', 'ejs');

app.get('/anime-list', (req, res) => {
    res.render('anime-list', { animes: animes });
});

const db = new sqlite3.Database('./database/database.db');
console.log(db); 
router.get('/', (req, res) => {
    db.all("SELECT * FROM anime", (err, rows) => {
        if (err) throw err;
        res.render('anime', { animes: rows }); // Renderiza la vista `anime.ejs` con los datos de animes
    });
});

module.exports = router;
