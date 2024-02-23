const {pool} = require ('../db/dbConnectionProvider')
const {Void} = require('./scalar-void')

const runQuery = async (query) =>{
  
  try{
    var res =  await pool.query(query);
    return res.rows;
  }
  catch (error) {
      console.error('something bad has happened!', error.stack);
  }

}


const resolvers = {
  Query: {
    getProducts: async () => {
       return await runQuery("SELECT * FROM Products"); 
    }
  },

  Mutation: {
    setProduct: async ( ctx , args) => {
       return await runQuery(`INSERT INTO Products ("Name", "Description", "Price", "Currency")
        VALUES ('${args.name}', '${args.description}', '${args.price}', '${args.currency}')`);
    }
  },

  Void: Void
};

module.exports = { resolvers };