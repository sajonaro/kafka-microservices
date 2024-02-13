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
    getClients: async () => {
       return await runQuery("SELECT * FROM Clients"); 
    }
  },

  Mutation: {
    setClient: async ( ctx , args) => {
       return await runQuery(`INSERT INTO Clients ("FirstName", "LastName", "Phone")
                              VALUES ('${args.fName}', '${args.lName}', '${args.phoneNum}')`); 
    }
  },

  Void: Void
};

module.exports = { resolvers };
