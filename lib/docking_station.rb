require "./lib/bike.rb"

class DockingStation
  attr_reader :bikes_storage

  def initialize
    @bikes_storage = []
  end

  def release_bike
    fail "No bikes available" if @bikes_storage.count <= 0
    @bikes_storage.pop #pop picks the last item in an array
  end

  def dock(bike)
    fail "This station is full" if full?
    @bikes_storage << bike
  end

  private

  def full?
    @bikes_storage.count >= 20
  end
end

# (below is what attr_reader is doing)
# def bikes
# return @bikes_storage
# end
