const { gql } = require('apollo-server');

const typeDefs = gql`

  scalar Void
  
  type Query {
    getProducts: [Product]!
    
  }

  type Mutation {
    setProduct(Name: String, Description: String, Price: String, Currency: String): [String]
  }

  type Product {
    Id: ID!
    Name: String!
    Description: String!
    Price: String!
    Currency: String!
  }

  
`

module.exports = {typeDefs}
