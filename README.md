# README

Ruby on Rails API to write, post and list messages

A message is composed of:
- some text
- a field specifying if it's public or private
- an author
- a recipient

## Run the app locally
`rails s`

## Querying the API
Hit http://localhost:3000/graphql as a POST request with the following body (as GraphQL):

### Get all messages
```graphql
query {
    allMessages {
        id
        author
        recipient
        visibility
        text
    }
}
```

### Create new message
```graphql
mutation {
  createMessage(input: {
    author: "Arnaud",
    recipient: "Arthur",
    visibility: "public",
    text: "This is a test message"
  }) {
    message {
      id
      author
      recipient
      visibility
      text
    }
    errors
  }
}
```

## Run tests
```ruby -Itest test/models/message_test.rb```
