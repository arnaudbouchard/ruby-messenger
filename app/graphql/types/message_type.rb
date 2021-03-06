module Types
  class MessageType < Types::BaseObject
    field :id, ID, null: false
    field :text, String, null: true
    field :visibility, String, null: true
    field :recipient, String, null: true
    field :author, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
