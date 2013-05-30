require 'minitest/autorun'
require '../lib/person.rb'
require '../lib/bike.rb'

class PersonTest < MiniTest::Unit::TestCase

	def test_person_can_have_bike

		person = Person.new
		bike = Bike.new(2)


		person.dock(bike)
		assert_equal false, person.empty?
	end

	def test_person_can_leave_bike
		person = Person.new
		bike = Bike.new(1)
		
		person.dock(bike)
		assert_equal(false, person.empty?)

		person.undock(bike)
		assert_equal(true, person.empty?)

	end

end