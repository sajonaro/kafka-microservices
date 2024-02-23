const { ApolloServer } = require("apollo-server");
const { typeDefs } = require("./schema/type-defs");
const { resolvers } = require("./schema/resolvers");

const initializeApollo = async () => {
  let server = new ApolloServer({ typeDefs, resolvers });
  let {url} = await server.listen(process.env.PORT || 4000); 
  console.log(`Products API IS RUNNING AT: ${url} `);
}

initializeApollo();