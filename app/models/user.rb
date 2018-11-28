class User < ApplicationRecord
   #Validations
   validates_presence_of :email, :first_name, :last_name, :account_type
   validates :email, uniqueness: true
   validates :username, uniqueness: true
   has_secure_password
   validates :password, length: { minimum: 6, maximum: 15 }, on: :create


end
