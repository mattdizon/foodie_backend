class User < ApplicationRecord
    has_secure_password
    has_secure_token :auth_token
    validates :email, presence: true
    validates :username, presence: true
    validates_uniqueness_of :email
    validates_uniqueness_of :username


    def invalidate_token
        self.update_coloumns(auth_token:nil)
    end

    def self.validate_login(username, password)
        user = find_by(username: username)
        if user && user.authenticate(password)
            user
        end
    end
end
