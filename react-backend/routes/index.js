var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { id: '405631663',name:'賴奕書' });
});

module.exports = router;
