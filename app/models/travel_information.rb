class TravelInformation < ApplicationRecord
  belongs_to :transport_company
  belongs_to :bookings
  has_many :users, through: :bookings
end
