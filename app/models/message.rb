class Message < ApplicationRecord
    validates :author, :presence => true
    validates :recipient, :presence => true
end
