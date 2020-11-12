# app/models/user.rb
class User < ApplicationRecord
    # encrypt password
    has_secure_password
  
    # Model associations
    has_many :bookings
    has_many :travel_informations, through: :bookings
    # Validations
    validates_presence_of :name, :email, :password_digest
end
