const db = require('../util/database');

module.exports = class Product {
    constructor(id, pname, cid, price, quantity) {
        this.id = id;
        this.pname = pname;
        this.cid = cid;
        this.price = price;
        this.quantity = quantity;
    }

    // CREATE 
    static add(req, res) {
        //console.log('add():', req.body.name, req.body.price);
        return db.execute(
            'INSERT INTO product (pname, cid, price, quantity) VALUES (?, ?, ?, ?)', [req.body.pname, req.body.cid, req.body.price, req.body.quantity]
        );
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM product');
    }

    static findById(id) {
        return db.execute('SELECT * FROM product where id = ?', [id]);
    }

    // UPDATE
    static updateById(req, res) {
        const id = req.body.id;
        const pname = req.body.pname;
        const cid = req.body.cid;
        const price = req.body.price;
        //const date = new Date();
        const quantity = req.body.quantity;
        console.log('model:updateById()', id, pname, cid, price, quantity)
        return db.execute(
            'UPDATE product SET pname = ?, cid = ?, price = ?, quantity = ? WHERE id = ?', [pname, cid, price, quantity, id]
        );
    }


    // DELETE
    static deleteById(id) {
        return db.execute(
            'DELETE FROM product WHERE id = ?', [id]
        );
    }


    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM prodcut');
    }
};