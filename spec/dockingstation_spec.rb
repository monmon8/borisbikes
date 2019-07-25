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

  it "Does not accept more bikes than capacity" do
    
    20.times { subject.dock Bike.new }
    expect { subject.dock(Bike.new) }.to raise_error "Docking station is full"
  end

end
