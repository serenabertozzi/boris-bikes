# frozen_string_literal: true

require_relative "bike"


class DockingStation
  attr_reader :bike
  def initialize
    @capacity = 20
    @bike_count = []
  end

  def release_bike
    if @bike_count.empty?
        fail "No bikes available"
    else
        @bike
        @bike_count.pop
    end
  end

  def dock(bike)
    if @bike_count.length == @capacity
      fail "Docking station full" 
    else
      @bike = bike
      @bike_count.push(@bike)
    end
  end
end
