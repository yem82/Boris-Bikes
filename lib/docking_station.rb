require_relative 'Bike'

class DockingStation
  attr_reader :bike

  def dock(bike)
     @bike = bike
  end

  def release_bike
    fail 'No bikes avaliable' unless @bike
    @bike
  end
end
