class User < ActiveRecord::Base
    has_secure_password
    before_save { email.downcase! }
    validates :name, 
              presence: true,
              uniqueness: true,
              length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
    
    validates :email,
              presence: true,
              uniqueness: {case_sensitive:false},
              format: {with: VALID_EMAIL_REGEX}
          
    validates :password, length: {minimum: 6}
   
end
