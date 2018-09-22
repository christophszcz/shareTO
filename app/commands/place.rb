class Place	
	def self.process_location(raw_address)
		lat_long = Geokit::Geocoders::GoogleGeocoder.geocode(raw_address)
		coordinates = Hash.new
		coordinates[:lat] = lat_long.lat
		coordinates[:lng] = lat_long.lng
		return coordinates
	end
end