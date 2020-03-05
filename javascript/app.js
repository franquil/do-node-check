var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.send("hello jenkins");
});

app.get('/test', function(res, res) {
  res.send("hello test");
});

app.listen(4000);

