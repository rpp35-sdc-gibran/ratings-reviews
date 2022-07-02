const express = require('express');
const router = express.Router();
const controllers = require('../controllers/ratingsAndReviews');

// handle all reviews by product id
router.get('/', (req, res) => {
   controllers.reviews.getProductReviews(req, res);
});

// handle meta data for a product review


// 
module.exports = router;
