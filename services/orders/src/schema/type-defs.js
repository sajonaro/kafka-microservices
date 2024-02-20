const { gql } = require('apollo-server');

const typeDefs = gql`

  scalar Void
  
  type Query {
    getOrders: [Order]!
    
  }

  type Mutation {
    setOrder(Name: String, Description: String, Price: String, Currency: String): [String]
  }

  type Order {
    Id: ID!
    Name: String!
    Description: String!
    Price: String!
    Currency: String!
  }

  
`

module.exports = {typeDefs}
