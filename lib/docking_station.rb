require '../lib/dockable.rb'
class DockingStation
	include Dockable

	def initialize
		@bike = Bike.new(1)
	end

	def break
		@bike.break(@bike)
	end 
end
