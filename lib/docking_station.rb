require_relative 'bike'

class DockingStation < Bike
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
     fail 'Docking station full' if @bikes.count >= 20
     @bikes << bike
  end

  def release_bike
    fail 'No bikes avaliable' if @bikes.empty?
    @bikes.pop
  end
end
