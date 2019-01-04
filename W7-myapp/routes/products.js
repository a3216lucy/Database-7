var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    //res.send('respond with a resource');

    var db = req.con;
    var data = '';

    db.query('SELECT * from product', function(req, rows) {

        data = rows;
        console.log(data);
        //console.log(JSON.stringify(data));
        res.render('products', { title: 'Product List', data: data });
    });
});

router.get('/edit', function(req, res, next) {
    var db = req.con;
    var id = req.query.id;

    db.query('SELECT * from product where id=?', id, function(err, rows) {
        if (err) {
            console.log(err);
        }
        data = rows;
        //console.log(data);
        console.log(JSON.stringify(data));
        res.render('productsEdit', { title: 'Product List', data: data });

    });
});
router.post('/edit', function(req, res, next) {
    var db = req.con;
    var id = req.body.id;
    var sql = {
        id: req.body.id,
        name: req.body.name,
        price: req.body.price
    };

    var qur = db.query('UPDATE product SET ? WHERE id = ?', [sql, id], function(err, rows) {
        if (err) {
            console.log(err);
        }
        res.setHeader('Content-Type', 'application/json');
        res.redirect('/products');
    });

});

router.get('/delete', function(req, res, next) {
    var db = req.con;
    var id = req.query.id;

    db.query('DELETE from product where id=?', id, function(err, rows) {
        if (err) {
            console.log(err);
        }
        res.redirect('/products');
    });
});

router.post('/add', function(req, res, next) {
    var db = req.con;
    var id = req.query.id;

    db.query('SELECT * from product where id=?', id, function(err, rows) {
        if (err) {
            console.log(err);
        }
        data = rows;
        //console.log(data);
        console.log(JSON.stringify(data));
        res.render('productsEdit', { title: 'Product List', data: data });

    });
});

module.exports = router;