# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  it 'reponse to release bike method' do
    docking_station = DockingStation.new

    expect(docking_station).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'returns a bike object' do
      docking_station = DockingStation.new

      result = docking_station.release_bike

      expect(result).to be_a_kind_of(Bike)
    end
  end

  it 'expects bike to be working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    result = bike.working?

    expect(result).to eq true
  end
end
