class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end 
  def release_bike
    fail 'No bikes available' if @bikes.count == 0
    @bikes.pop
  end
  def dock(bike)
    raise "Docking station is full" if @bikes.count >=20
    @bikes << bike
  end
end



