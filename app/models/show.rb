class Show < ApplicationRecord
	belongs_to :channel
	has_many :favorite_shows
	has_many :users, through: :favorite_shows
end
