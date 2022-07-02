const Pool = require('pg-pool');

const pool = new Pool({
   user: 'postgres',
   host: 'localhost',
   database: 'postgres',
   password: '',
});

pool
   .connect()
   .then(() => console.log('connected to PostgreSQL now!'))
   .catch((err) => console.error(err.message));

module.exports = pool;
