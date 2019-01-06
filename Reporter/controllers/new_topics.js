const moment = require('moment');

const New_topics = require('../models/new_topics');
/* READ *****************************/

// exports.loadTopics = async(req, res, next) => {
    // let {PythonShell} = require('python-shell')
    // let options = {
    //     mode: "json",
    //     pythonOptions: ["-u"],
    //     scriptPath: "./python",
    // };
    // PythonShell.run("python.py", options, function (err, results,res) {
    //     if (err) console.log(err);
    //     // results is an array consisting of messages collected during execution
    //     console.log('results: %j', results);

    //              for(i=0;i<results.length;i++){
    //                 // console.log(results[i].title)
    //                 // Promise.resolve(New_topics.searchTitle(results[i].title) ).then(([rows]) => {
    //                 //     console.log(results[i].title)
    //                 //     console.log('1',rows[1]);
    //                     // if(rows[1]!=''){
    //                         // console.log('2',rows[2]);
    //                          New_topics.pythonAdd(results[i])
    //                         .then(([rows]) => {
                                
    //                         // console.log('results: %j',rows.title);
    //                         // console.log('resultssql: %j', rows);
    //                         // res.redirect('/');
    //                         })
    //                         .catch(err => console.log(err));
    //                     }
                    
                
    // });
// // }
// // var test =  new PythonShell('python.py', options);
// // test.on('message',function (message) {
// //     console.log(message);
// // });
exports.getProduct = async(req, res, next) => {

    let length1;
    let new_topics;


    const findlength = await New_topics.fetchAll()
    .then(([rows]) => {
        length1=rows.length
       
    })
    .catch(err => console.log(err));
    

    const findPostById = await New_topics.findById(req.query.Page)
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
        console.log(length1);
    res.render('new_topics', {
        data: new_topics,
        title: 'new_topics Post',
        length: length1,
        // categories: categories
    });

};

exports.getEditProduct = async(req, res, next) => {

    let categories;
    let new_topics;

    // const getCategories = await Category.fetchAll()
    //     .then(([rows]) => {
    //         categories = rows;
    //         //console.log('findCategories(): ', JSON.stringify(rows));
    //     })

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
    //console.log(req)
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