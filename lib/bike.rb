class Bike

	def initialize(id)
		@id = id
		@broken = false
	end
	
	def broken?
		@broken 
	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
	end

	def id
		@id
	end

end
