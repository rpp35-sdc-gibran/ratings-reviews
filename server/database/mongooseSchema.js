import mongoose from 'mongoose';
const { Schema } = mongoose;

const reviewsSchema = new Schema({
   review_id: Number,
   rating: Number,
   summary: String,
   recommend: Boolean,
   response: String,
   body: String,
   date: Date,
   reviewer_name: String,
   helpfulness: Number,
});

const photoSchema = new Schema({
   id: Number,
   review_id: Number,
   url: String,
});

const characteristicSchema = new Schema({
   id: Number,
   characterstics_id: Number,
   review_id: Number,
   value: Number,
});

const reviewsModel = mongoose.model('reviewsModel', reviewsSchema);
const photoModel = mongoose.model('photoModel', photoSchema);
const characteristicModel = mongoose.model(
   'characteristicModel',
   characteristicSchema
);

export { reviewsModel, photoModel, characteristicModel };
