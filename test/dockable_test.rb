require 'minitest/autorun'
require '../lib/dockable'
require '../lib/bike'


class DockableClass
	include Dockable
end

class DockableTest < MiniTest::Unit::TestCase
	
	def setup
		@dockable = DockableClass.new
		@bike = Bike.new(1)

	end


	def test_empty
		assert @dockable.empty?
	end

	def test_a_bike_can_be_docked
		assert @dockable.empty?
		@dockable.dock(@bike)
		refute @dockable.empty?
	end

	def test_avilaible_bikes	
		@dockable.dock(@bike)
		bikes = @dockable.available_bikes
		assert_equal [@bike], bikes
	end

	def test_broken_bikes
		skip
		@dockable.dock(@bike)
		bikes = @dockable.broken_bikes
		assert_equal [@bike], bikes
	end

	def test_a_bike_can_be_undocked
		@dockable.dock(@bike)
		@dockable.undock(@bike)
	end

	def test_bike_count
		assert @dockable.bike_count
	end

	def test_full
		skip
		assert @dockable.full?
	end

	# def test_total_bikes
	# 	assert self.all
	# end
	def test_bike_has_broke
		assert @bike.break!
	end

	def test_default_capacity_of_the_dockable
		assert_equal 20, @dockable.capacity
	end

	def test_custom_capacity
		assert_equal 20, @dockable.capacity
		@dockable.capacity = 10
		assert_equal 10, @dockable.capacity		
	end

	def test_specific_bike_can_be_undocked
		bike = Bike.new(1)
		assert 0, @dockable.available_bikes.count
		@dockable.dock bike
		assert @dockable.available_bikes.include? bike
		@dockable.undock bike
		refute @dockable.available_bikes.include?(bike), "The bike is still there"
	end

	def test_cant_undock_bikes_i_dont_have
		# @dockable.dock(@bike)
		# bike = @dockable.available_bikes 
		# assert_equal [@bike] bike
		 assert_raises(RuntimeError) do
			@dockable.undock(Bike.new(87654))
		 end
	end

end