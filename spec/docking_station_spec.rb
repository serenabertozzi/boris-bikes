# frozen_string_literal: true

require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "returns a bike object" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe "#initialization" do
    subject { DockingStation.new(50) }
    it "has a variable capacity" do
      50.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end
  end

  describe "#dock" do
    it "docks a bike in the docking station" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes.length).to(eq(1))
    end

    it "doesn't accept a bike if docking station is full" do
      bike = Bike.new
      subject.capacity.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error "Docking station full"
    end
  end

  describe "#release_bike" do
    it "releases a bike" do
      20.times { subject.dock Bike.new }
      20.times { subject.release_bike }
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end
end
