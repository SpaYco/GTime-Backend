class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, message: 'please provide a name'
end
