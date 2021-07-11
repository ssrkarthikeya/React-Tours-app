var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/health', function (req, res, next) {
  res.send('This is the API');
});

module.exports = router;
