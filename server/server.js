require('dotenv').config();
const express = require('express');
const port = process.env.PORT || 8080;
const cors = require('cors');
const reviews = require('./routes/ratingsAndReviews');
const { reviewsModel } = require('./database/mongooseSchema');

const app = express();

app.use(cors());
app.use(bodyParser.urlencoded({extended: false}));

app.use('/reviews', reviews);

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
});