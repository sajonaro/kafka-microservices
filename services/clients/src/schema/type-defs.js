const { gql } = require('apollo-server');

const typeDefs = gql`
  
  type Query {
    getClients: [Client]!
    
  }

  type Mutation {
    setClient(client: Client): String
  }

  type Client {
    Id: ID!
    FirstName: String!
    LastName: String!
    Phone: String!
  }


`

module.exports = {typeDefs}