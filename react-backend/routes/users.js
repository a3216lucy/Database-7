var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  // res.send('respond with a resource');
  res.json([{
    id: 1,
    username: "賴奕書"
}, {
    id: 2,
    username: "鍾雄任"
},{
    id: 3,
username: "林思妤"
},{
id:4,
    username: "林潓蓉"
}
]);
});


module.exports = router;
