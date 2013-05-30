module Dockable


  CAPACITY = 20

  def bikes
    @bikes ||= []
  end

  def empty?
    bikes.empty?
  end

  def dock(bike)
    raise "There are no spaces" if full?
    bikes << bike unless full?
  end

  def available_bikes
    bikes.reject {|bike| bike.broken? }
  end

  def broken_bikes
    bikes.select {|bike| bike.broken? }
  end
  
  # Grab a bike and remove from the dock
  def undock(bike)
    raise "This bike is not docked" unless bikes.include?(bike)
     bikes.delete(bike) 
  end

  def bike_count
    bikes.count
  end
  
  def capacity
    @capacity ||= CAPACITY
  end


  def capacity=(new_value)
    @capacity = new_value
  end

  def full?
    bike_count >= capacity
  end
# Finish when have all the information.

  # def self.all(bike)
  #   @bikes = @bikes.available + bikes.broken_bikes
  # end

end