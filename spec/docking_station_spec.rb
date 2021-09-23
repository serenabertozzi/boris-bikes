# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'returns a bike object' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
