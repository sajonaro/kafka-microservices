const { gql } = require('apollo-server');

const typeDefs = gql`

  scalar Void
  
  type Query {
    getClients: [Client]!
    
  }

  type Mutation {
    setClient(fName: String, lName: String, phoneNum: String): [String]
  }

  type Client {
    Id: ID!
    FirstName: String!
    LastName: String!
    Phone: String!
  }

  
`

module.exports = {typeDefs}