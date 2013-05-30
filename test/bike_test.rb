require 'minitest/autorun'
require '../lib/bike'

class BikeTest < MiniTest::Unit::TestCase

	def setup
		@bike = Bike.new(12345)
	end

	def test_new_bike_is_not_broken
		assert @bike.broken? == false
	end

	def test_bike_can_be_broken		
		@bike.break!
		assert @bike.broken?
	end

	def test_bike_can_be_fixed		
		@bike.break!
		@bike.fix!
		assert @bike.broken? == false		
	end

	def test_bike_has_an_id		
		assert_equal 12345, @bike.id
	end

end