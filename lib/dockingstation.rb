class DockingStation
  attr_reader :bike
  def release_bike
    fail 'No bikes available' unless @bike
    Bike.new
  end
  def dock(bike)
    if @bike
      raise "Docking station is full"
    end
    @bike = bike
  end
end



