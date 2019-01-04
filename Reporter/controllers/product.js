const moment = require('moment');

const Product = require('../models/product');
const Company = require('../models/company');

/* READ *****************************/

exports.getProduct = async(req, res, next) => {
    let cname;
    let product;
    await Company.getCname()
        .then(([rows]) => {
            cname = rows;
            // res.send(JSON.stringify(cname));
            console.log(JSON.stringify(rows, ["id", "cname"]));
        })
    await Product.fetchAll()
        .then(([rows]) => {
            console.log(JSON.stringify(rows, ["id", "pname", "cid", "price", "quantity"]));
            // res.send(JSON.stringify(rows));
            product = rows;
        })
        .catch(err => console.log(err));
    res.render('product', {
        data: cname,
        title: 'list',
    });
};

exports.getEditProduct = async(req, res, next) => {

    let categories;
    let product;

    const getCategories = await Category.fetchAll()
        .then(([rows]) => {
            categories = rows;
            //console.log('findCategories(): ', JSON.stringify(rows));
        })

    const findPostById = await Product.findById(req.query.id)
        .then(([rows]) => {
            // for (let p of rows) {
            //     p.date = moment(p.date).format('YYYY-MM-DD');
            //     console.log('p.date: ', p.date);
            // }
            product = rows;
            //console.log('post[0].date: ', post[0].date);
            //console.log('findPostById(): ', JSON.stringify(rows));
        })
        .catch(err => console.log(err));

    // console.log('post: ', JSON.stringify(post[0].date));

    res.render('details', {
        data: product,
        title: 'Edit Post',
        // categories: categories
    });

};

exports.postAddProduct = (req, res, next) => {

    Product.add(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));
};



exports.postUpdateProduct = (req, res, next) => {

    Product.updateById(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));
};

exports.getDeleteProduct = (req, res, next) => {
    Product.deleteById(req.query.id)
        .then(([rows]) => {
            res.redirect('/db_405631697');
        })
        .catch();
}