const db = require('../util/database');

module.exports = class new_Topics {
    constructor(id, title, content, url) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.url = url;
    }

    static pythonAdd(results){
        return db.execute(
            'INSERT INTO new_topics (title, content, url) VALUES (?, ?, ?)', [results.title, results.content, results.url]
        );
    }
    
    // CREATE 
    static add(req, res) {
        //console.log('add():', req.body.name, req.body.price);
        return db.execute(
            'INSERT INTO new_topics (title, content, url) VALUES (?, ?, ?)', [req.body.title, req.body.content, req.body.url]
        );
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM new_topics');
    }

    static findById(id) {
        return db.execute('SELECT * FROM new_topics where id = ?', [id]);
    }

    // UPDATE
    static updateById(req, res) {
        const id = req.body.id;
        const title = req.body.title;
        const content = req.body.editor1;
        const url = req.body.url;
        //const date = new Date();
        console.log('model:updateById()', id, title, content, url)
        return db.execute(
            'UPDATE new_topics SET title = ?, content = ?, url = ? WHERE id = ?', [title, content, url, id]
        );
    }


    // DELETE
    static deleteById(id) {
        return db.execute(
            'DELETE FROM new_topics WHERE id = ?', [id]
        );
    }


    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM new_topics');
    }
};