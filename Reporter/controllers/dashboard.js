const moment = require('moment');

const Post = require('../models/post');
const Category = require('../models/category');
const User = require('../models/user');
const New_topics = require('../models/new_topics');
const Photography = require('../models/photography');

// exports.getTopics = (req, res, next) => {
//   let cname;
//   let new_topics;
//   New_topics.fetchAll()
//       .then(([rows]) => {
//           console.log(JSON.stringify(rows, ["id", "title", "content", "url"]));
//           // res.send(JSON.stringify(rows));
//           new_topics = rows;
//           res.render('new_topics', {
//               data: rows,
//               title: 'list',
//           });
//       })
//       .catch(err => console.log(err));
  
// };


exports.getDashboard = async (req, res, next) => {

  let posts;
  let postCounts;
  let categories;
  let categoryCount;
  let userCount;
  let cname;
  let new_topics;
  let photography;
  let new_topicsCount;
  let photographyCount;

  try {
    const getPosts = await Post.fetchAll()
      .then(([rows]) => {
        for (let p of rows) {
          p.date = moment(p.date).format('MMM D, YYYY');
        }
        posts = rows;
      })
    const getPostCount = await Post.getCount()
      .then(([rows]) => {
        postCount = rows[0].count;
      })

    const getCategories = await Category.fetchAll()
      .then(([rows]) => {
        for (let p of rows) {
          p.date = moment(p.date).format('MMM D, YYYY');
        }
        categories = rows;
      })

    const getCategoryCount = await Category.getCount()
      .then(([rows]) => {
        categoryCount = rows[0].count;
      })

    const getUserCount = await User.getCount()
      .then(([rows]) => {
        userCount = rows[0].count;
        // console.log('user count 1: ', userCount);
      })

    const getTopics = await New_topics.fetchAll()
      .then(([rows]) => {
        //res.send(JSON.stringify(rows));
        new_topics = rows;
        // console.log('topic: ', new_topics);
      })
    const getPhotography = await Photography.fetchAll()
      .then(([rows]) => {
        //res.send(JSON.stringify(rows));
        photography = rows;
        // console.log('photography: ', photography);
      })
    const getTopicCount = await New_topics.getCount()
      .then(([rows]) => {
        new_topicsCount = rows[0].count;
      })
    const getPhotoCount = await Photography.getCount()
      .then(([rows]) => {
        photographyCount = rows[0].count;
      })

    let data = {
      posts: posts,
      categories: categories,
      postCount: postCount,
      categoryCount: categoryCount,
      userCount: userCount,
      topic: new_topics,
      photography: photography,
      new_topicsCount: new_topicsCount,
      photographyCount:photographyCount
    }

    //console.log(JSON.stringify(data));
    //res.send(JSON.stringify(data));

    res.render('dashboard', {
      title: 'Dashboard',
      color: 'btn-primary',
      icon: 'fa-cog',
      data: posts,
      categories: categories,
      categoryCount: categoryCount,
      postCount: postCount,
      userCount: userCount,
      topic: new_topics,
      photography: photography,
      new_topicsCount: new_topicsCount,
      photographyCount:photographyCount

    });

  } catch (err) {
    console.log(err);
  };

};