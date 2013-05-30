require '../lib/bike'
require '../lib/dockable'
require '../lib/garage'
require 'minitest/autorun'


class TestGarage < MiniTest::Unit::TestCase

	def test_if_bikes_are_getting_fixed
		garage = Garage.new

		5.times do |i|
			bike = Bike.new(i)
			bike.break!
			garage.dock bike
		end
		assert_equal 5, garage.broken_bikes.count
		assert_equal 0, garage.available_bikes.count
		garage.fix!
		assert_equal 0, garage.broken_bikes.count
		assert_equal 5, garage.available_bikes.count		
	end
end