 const {Pool} = require('pg');

 const pool = new Pool({
   host:  process.env.HOST, 
   user: "postgres",
   password: "my-strongest-password",
   database: "poc-db" ,
   port: 5432

});

pool.on('error', (err) => {
   console.error('Error:', err);
});


 module.exports = { pool }