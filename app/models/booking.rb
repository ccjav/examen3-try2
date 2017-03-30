class Booking < ApplicationRecord
	belongs_to :flight
	has_many :user_bookings
	has_many :user, through: :user_bookings
	accepts_nested_attributes_for :user
end
