
require 'docking_station'

describe DockingStation do
  bike = Bike.new
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'release working bike' do
    subject.dock(bike)
    expect(subject.working?).to eq true
   end

describe '#dock' do
  it 'an instance of a bike docked' do
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
   end

  it 'raises error when docking station full' do
    20.times {subject.dock(bike)}
    expect {subject.dock(bike)}.to raise_error "Docking station full"
   end
end

describe '#release_bike' do
  it 'release_bike' do
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
   end

  it 'raises an error when there is no bike avaliable' do
    expect { subject.release_bike }.to raise_error 'No bikes avaliable'
    #curly braces are used for procs (a block of code)
   end
end
end
