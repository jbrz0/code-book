// Set a static assets folder (html, images etc)
app.use(express.static('./static'))

// Body Parser: parse JSON into JS objects
var bodyParser = require('body-parser')
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())
// Demo, parsing sent JSON into body
app.post("/posturl",function(req,res,next){
  console.log(req.body);
  res.send("response");
})

// Call a function on EVERY request
app.use(function (req, res, next) {
  console.log('Time:', Date.now())
  next() // Move on
})

// Call a function on a SPECIFIC request
app.use('/user/:id', function (req, res, next) {
  console.log('Request Type:', req.method)
  next()
})

// TODO: Make an express-router.js page with router vs app
