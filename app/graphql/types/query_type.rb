module Types
  class QueryType < Types::BaseObject
    field :all_messages, [Types::MessageType], null: false

        def all_messages
            Message.all
        end
  end
end
