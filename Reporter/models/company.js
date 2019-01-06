const db = require('../util/database');

module.exports = class Company {
    constructor(id, cname) {
        this.id = id;
        this.cname = cname;
    }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM company');
    }
    static getCname() {
        return db.execute('SELECT * FROM company c, product p where c.id=p.cid');
    }
    static getCount() {
        return db.execute('SELECT COUNT(*) as count FROM company');
    }
}