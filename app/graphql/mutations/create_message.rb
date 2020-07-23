class Mutations::CreateMessage < Mutations::BaseMutation
    argument :author, String, required: true
    argument :recipient, String, required: true
    argument :visibility, String, required: false
    argument :text, String, required: false

    field :message, Types::MessageType, null: false
    field :errors, [String], null: false

    def resolve(author:, recipient:, visibility: nil, text: nil)
        message = Message.new(author: author, recipient: recipient, visibility: visibility, text: text)
        if message.save
            {
                message: message,
                errors: []
            }
        else
            {
                message: nil,
                errors: message.errors.full_messages
            }
        end
    end
end