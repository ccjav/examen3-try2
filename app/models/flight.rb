class Flight < ApplicationRecord
	has_many :bookings
	has_many :user_bookings, through: :bookings
	has_many :users, through: :bookings
end
