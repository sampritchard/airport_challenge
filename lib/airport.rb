require_relative 'plane'
require_relative 'weather'

class Airport

  attr_reader :plane

  def initialize
    @plane = []
  end

  def land_plane(plane)
    fail "This plane has already landed!" if @plane.include? plane
    @plane << plane
  end

  def take_off(plane)
    fail "This plane is not at the airport!" if empty?
    fail 'This plane is not at the airport!' unless @plane.include? plane
    @plane.pop
  end

  def empty?
    @plane.count == 0
  end


end
