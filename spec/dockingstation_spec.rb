require "dockingstation.rb"
describe DockingStation do
  it 'Instantiates a new Docking station using the DockingStation method' do
    docking_station = DockingStation.new
    expect( docking_station).to be_kind_of(DockingStation)
  end

  it 'Test if docking station can respond to the release bike method' do
    docking_station = DockingStation.new
    expect( docking_station).to respond_to(:release_bike)
  end

  it 'Checks if the release bike method actually gets a bike' do
    dockingstation = DockingStation.new
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.release_bike).to be_a(Bike)

  end

  it 'check the docking station can dock a bike 'do
  dockingstation = DockingStation.new
  expect(dockingstation).to respond_to(:dock).with(1).argument
  end
  it 'check the docking station has bike ' do
  dockingstation = DockingStation.new
  expect(dockingstation).to respond_to(:bikes)
  end
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  it 'releases working bike when bike is working' do
    subject.dock(Bike.new)
    released_bike = subject.release_bike
  if released_bike
      expect(release_bike).to be_a(bike)
      expect(release_bike).not_to be_broken
      expect(release_bike).to be_working
  end
end
 
  it "does not release a broken bike" do
    bike = Bike.new
    bike.report_bike
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error “No bikes available”
  end

  it "Does not accept more bikes than capacity" do

    DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock(Bike.new) }.to raise_error "Docking station is full"
  end

  it "Shows a custom capacity" do
    docking_station = DockingStation.new(50)
    expect(docking_station.capacity).to eq(50)
  end
  it "Shows a default capacity" do
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end
end