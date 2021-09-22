# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  it 'reponse to release bike method' do
    docking_station = DockingStation.new

    expect(docking_station).to respond_to(:release_bike)
  end
end
