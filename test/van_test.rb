require 'minitest/autorun'
require '../lib/dockable'
require '../lib/bike'
require '../lib/docking_station'
require '../lib/garage'
require '../lib/van'

class VanTest < MiniTest::Unit::TestCase

	def setup
		@van = Van.new
	end
	
	def test_bike_can_be_collected
		bike = Bike.new(123)

		assert_equal(true, @van.collect(bike))
	end
end