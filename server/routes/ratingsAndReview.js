const express = require('express');
const router = express.Router();
const controllers = require('../controllers/ratingsAndReviews');

router.get('/', (req, res) => {
   controllers.reviews.getProductReviews(req, res);
});

module.exports = router;
