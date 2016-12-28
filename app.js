var express = require('express')
var app = express()

app.set('views', './views')
app.set('view engine', 'pug')

app.get('/', function(req, res) {
  res.render('home', {})
})

app.listen(8080, function() {
  console.log('Example app listening on port 8080!')
})

module.exports.getApp = app;
