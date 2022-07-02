require('dotenv').config();
const express = require('express');
const port = process.env.PORT || 4210;
const cors = require('cors');
const pool = require('../server/models/reviews.model');

const app = express();

app.use(cors());
app.use(express.json());

//ROUTES//

//get /reviews by product_id
app.get('/reviews', async (req, res) => {
   let product_id = Number(req.query.product_id),
      page = !req.query.page ? 1 : Number(req.query.page),
      count = !req.query.count ? 15 : Number(req.query.count),
      sort = req.query.sort;

   try {
      const reviews = await pool.query(
         `SELECT * FROM review where product_id = ${product_id}`
      );
      console.log('result in reviews', reviews);
      res.json(reviews);
   } catch (err) {
      console.error(err.message);
   }
});

//get /reviews/metas by product_id

//put /reviews by product_id, rating, summary, body, recommend, name, email, photos, characteristics

//put /reviews/:review_id/helpful

//put /reviews/:review_id/report

app.listen(port, () => {
   console.log(`App listening on port ${port}`);
});
