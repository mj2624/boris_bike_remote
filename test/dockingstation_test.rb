require 'minitest/autorun'
require '../lib/dockable'
require '../lib/bike'

class TestDockingStation < MiniTest::Unit::TestCase

	def setup
		@bike = Bike.new(1)
	end

	def test_break_bike
		assert @bike.break!
	end
end