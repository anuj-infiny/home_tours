class Home < ActiveRecord::Base
	has_many :home_images
	geocoded_by :address,
	  :latitude => :lat, :longitude => :lng
	after_validation :geocode
end
