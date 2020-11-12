class Booking < ApplicationRecord
  belongs_to :travel_information
  belongs_to :user
end
