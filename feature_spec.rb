require "./lib/docking_station.rb"
docking_station = DockingStation.new
#docking_station.release_bike

20.times {
  bike = Bike.new
  docking_station.dock(bike)
  puts bike
}

#20.times { docking_station.dock(Bike.new) }
