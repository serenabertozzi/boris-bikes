# frozen_string_literal: true

require_relative "bike"

class DockingStation
  attr_reader :bike
  DEFAULT_CAPACITY = 20

  def initialize
    @bike_count = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bike_count.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bike = bike
    @bike_count << bike
  end

  private

  def full?
    @bike_count.length == DEFAULT_CAPACITY
  end

  def empty?
    @bike_count.empty?
  end
end
