const {pool} = require ('../db/dbConnectionProvider')

const fetchFromDb = async (query) =>{
  
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
       return await fetchFromDb("select * from Clients"); 
    }
  },

  Mutation: {
    setClient: async (client) => {
       return await fetchFromDb("insert into Clients (FirstName, LastName, Phone) values ('"+client.FirstName+"','"+client.LastName+"','"+client.Phone+"')"); 
    }
  }
};

module.exports = { resolvers };
