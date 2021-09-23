require "./lib/docking_station.rb"
require "./lib/bike.rb"

# describe DockingStation do
#   it "Docking Station releases bike" do
#     expect(DockingStation.new).to respond_to(:releases_bike)
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "releases a bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.release_bike).to eq bike
    expect(bike).to be_working
  end
  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).arguments }
    it "docks a bike" do
      # station = DockingStation.new
      # bike = Bike.new
      # station.dock(bike)
      #(these are one way of doing this vs line 17)
    end
    it "shows you what bike has been docked" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(station.bikes_storage.last).to eq bike
    end
    it "raises an error if there are no bikes" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
    it "raises error if station is full" do
      station = DockingStation.new
      20.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error "This station is full"
    end
  end
end

# Add a test to your DockingStation
# specification that a) gets a bike,
# and then b) expects the bike to be
#working
