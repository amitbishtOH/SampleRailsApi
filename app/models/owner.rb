class Owner < ApplicationRecord
    validates_presence_of :username, :password
end
