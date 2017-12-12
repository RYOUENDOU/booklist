class Booklist < ApplicationRecord
	has_many :comments
	validates :title, presence: true
	validates :price, presence: true
	validates :rate, presence: true
end
