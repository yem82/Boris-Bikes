
require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'release working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?).to eq true
  end

  it 'an instance of a bike docked' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
  end

  it 'docking station can return a bike' do
    expect(subject).to respond_to :bike
  end

  describe '#release_bike' do
    it 'release_bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there is no bike avaliable' do
      expect { subject.release_bike }.to raise_error 'No bikes avaliable'
    end

  end

  end

# it 'new test for docking station to return bike' do
#   bike = Bike.new
#   subject.dock(bike)
#   expect(subject.bike).to eq bike
# end





# docking_station.dock(bike)
# docking_station.bike





# it {is_expected.to respond_to :black}
#
# it {is_expected.to respond_to(:black).with(2).arguments}
# it {is_expected.to respond_to(:black).with(1).argument}
# it {is_expected.to respond_to(:white).with(2).arguments}
# it {is_expected.to resppond_to :black}
#
#
# expect(5).to eql (6)
#
# it {is_expected.to respond_to :black}
#
# it {is_expected.to respond_to(:black).with(2).arguments}
