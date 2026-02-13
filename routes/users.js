// routes/users.js
const express = require('express');
const router = express.Router();
const sqlite3 = require('sqlite3').verbose();

const db = new sqlite3.Database('./database/database.db');

router.get('/', (req, res) => {
    db.all("SELECT * FROM anime", (err, rows) => {
        if (err) throw err;
        res.render('users', { animes: rows });
    });
});

module.exports = router;
