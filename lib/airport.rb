require_relative 'plane'
# require_relative 'weather'

class Airport

  attr_reader :plane, :capacity

  def initialize
    @plane = []
    @capacity = 1
  end

  def land_plane(plane)
    fail "This plane has already landed!" if @plane.include? plane
    fail "Too stormy!" if stormy?
    fail "Airport full!" if full?
    @plane << plane
  end

  def take_off(plane)
    fail "This plane is not at the airport!" if empty?
    fail 'This plane is not at the airport!' unless @plane.include? plane
    fail "Too stormy!" if stormy?
    @plane.pop
  end

  def empty?
    @plane.count == 0
  end

  def stormy?
    [true, false, false, false].sample
  end

  def full?
    @plane.length >= capacity
  end

end
