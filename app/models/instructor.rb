class Instructor < ActiveRecord::Base
	has_many :courses
	validates :name, uniqueness: true
end
