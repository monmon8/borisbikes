require_relative "../lib/dockingstation.rb"
require_relative "../lib/bike.rb"

dockingstation = DockingStation.new

20.times { dockingstation.dock Bike.new }