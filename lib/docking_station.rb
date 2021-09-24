# frozen_string_literal: true

require_relative "bike"


class DockingStation
  attr_reader :bike
  def initialize
    @capacity = 1
    @bike_count = 0
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike 
  end

  def dock(bike)
    if @bike_count == @capacity
      fail "Docking station full" 
    else
      @bike = bike
      @bike_count += 1
    end
  end
end
