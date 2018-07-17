class Location < ApplicationRecor
	geocoded_by :my_location
	validates :address, :presence:true
	valicates :city, presence: true

	after_validation :geocode
	def_my_location
	 "#{address}, #{city} GA, "
	end
end


