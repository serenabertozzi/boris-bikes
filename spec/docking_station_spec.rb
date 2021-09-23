# frozen_string_literal: true

require "docking_station"

RSpec.describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "returns a bike object" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it "docks a bike in the docking station" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to(eq(bike))
  end
end
