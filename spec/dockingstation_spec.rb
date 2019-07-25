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
    bike = DockingStation.new.release_bike
    expect( bike).to respond_to(:working?)
  end
  it 'check the docking station can dock a bike 'do 
  dockingstation = DockingStation.new
  expect(dockingstation).to respond_to(:dock).with(1dockingdocking).argument
  end
  it 'check the docking station has bike ' do
  dockingstation = DockingStation.new
  expect(dockingstation).to respond_to(:bike)
  end
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
end
