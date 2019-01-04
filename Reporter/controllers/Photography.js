const moment = require('moment');

const photography = require('../models/photography');
// const Company = require('../models/company');

/* READ *****************************/

exports.getphotography = (req, res, next) => {
    photography.fetchAll()
        .then(([rows]) => {
            for (let p of rows) {
                p.date = moment(p.date).format('MMM D, YYYY');
            }
            console.log(JSON.stringify(rows, ["id", "title", "tag","content","img_url","url","date"]));
            //res.send(JSON.stringify(rows));
            res.render('photography', {
                data: rows,
                title: 'list',
            });
        })
        .catch(err => console.log(err));
};

exports.getEditphotography = async(req, res, next) => {

    // let categories;
    let photography;

    // const getCategories = await Category.fetchAll()
    //     .then(([rows]) => {
    //         categories = rows;
    //         //console.log('findCategories(): ', JSON.stringify(rows));
    //     })

    const findPostById = await photography.findById(req.query.id)
        .then(([rows]) => {
            // for (let p of rows) {
            //     p.date = moment(p.date).format('YYYY-MM-DD');
            //     console.log('p.date: ', p.date);
            // }
            photography = rows;
            //console.log('post[0].date: ', post[0].date);
            //console.log('findPostById(): ', JSON.stringify(rows));
        })
        .catch(err => console.log(err));

    console.log('photography: ', JSON.stringify(photography[0].date));
    
    res.render('details', {
        data: photography,
        title: 'Edit photography',
        // categories: categories

   });

};

exports.postAddphotography = (req, res, next) => {

    photography.add(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));
};




exports.postUpdatephotography = (req, res, next) => {

    photography.updateById(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));
};

exports.getDeletephotography = (req, res, next) => {
    photography.deleteById(req.query.id)
        .then(([rows]) => {
            res.redirect('/photography');
        })
        .catch();
}