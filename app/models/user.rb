class User < ApplicationRecord
    has_many :rides
    has_many :attractions, through: :rides
    has_secure_password

    def mood #fix this
        unless admin
            nausea > happiness ? "sad" : "happy"
        end
    end

end
