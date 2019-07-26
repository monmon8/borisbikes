require_relative "../lib/dockingstation.rb"
require_relative "../lib/bike.rb"


# Feature Test 1
dockingstation = DockingStation.new

20.times { dockingstation.dock Bike.new }

# Feature Test 2

ds2 = DockingStation.new(100)

100.times { ds2.dock Bike.new }

# Feature Test 3
 station = DockingStation.new
 bike = Bike.new
 bike.reported_bike
 bike.broken?
 


