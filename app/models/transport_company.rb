class TransportCompany < ApplicationRecord
  belongs_to :user
  has_many :travel_informations
end
