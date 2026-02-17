// routes/login.js
const express = require('express');
const router = express.Router();
const sqlite3 = require('sqlite3').verbose();

const db = new sqlite3.Database('./database/database.db');

router.get('/', (req, res) => {
    res.render('login');
});

router.post('/', (req, res) => {
    const { username, password } = req.body;
    db.get("SELECT * FROM users WHERE username = ? AND password = ?", [username, password], (err, row) => {
        if (err) throw err;
        if (row) {
            res.redirect('/anime'); // Redirige a la ruta /anime si el inicio de sesión es correcto
        } else {
            res.redirect('/login'); // Redirige de nuevo a la página de inicio de sesión si las credenciales son incorrectas
        }
    
    });
});

module.exports = router;
