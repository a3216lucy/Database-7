const moment = require('moment');

const New_topics = require('../models/new_topics');
const Company = require('../models/company');

/* READ *****************************/

exports.getProduct = (req, res, next) => {
    let cname;
    let new_topics;
    New_topics.fetchAll()
        .then(([rows]) => {
            console.log(JSON.stringify(rows, ["id", "title", "content", "url"]));
            // res.send(JSON.stringify(rows));
            new_topics = rows;
            res.render('new_topics', {
                data: rows,
                title: 'list',
            });
        })
        .catch(err => console.log(err));
    
};

exports.getEditProduct = async(req, res, next) => {

    let categories;
    let new_topics;

    const getCategories = await Category.fetchAll()
        .then(([rows]) => {
            categories = rows;
            //console.log('findCategories(): ', JSON.stringify(rows));
        })

    const findPostById = await New_topics.findById(req.query.id)
        .then(([rows]) => {
            // for (let p of rows) {
            //     p.date = moment(p.date).format('YYYY-MM-DD');
            //     console.log('p.date: ', p.date);
            // }
            new_topics = rows;
            //console.log('post[0].date: ', post[0].date);
            //console.log('findPostById(): ', JSON.stringify(rows));
        })
        .catch(err => console.log(err));

    // console.log('post: ', JSON.stringify(post[0].date));

    res.render('details', {
        data: new_topics,
        title: 'Edit Post',
        // categories: categories
    });

};

exports.postAddProduct = (req, res, next) => {

    New_topics.add(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));
};



exports.postUpdateProduct = (req, res, next) => {

    New_topics.updateById(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));
};

exports.getDeleteProduct = (req, res, next) => {
    New_topics.deleteById(req.query.id)
        .then(([rows]) => {
            res.redirect('/new_topics');
        })
        .catch();
}