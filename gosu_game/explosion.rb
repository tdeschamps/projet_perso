require 'gosu'

class Explosion

  attr_accessor :x, :y

  def initialize(window)
    @image = Gosu::Image.new(window, "media/explosion.png", false)
    @x, @y = x, y
  end

  def draw
    @image.draw(@x, @py, 1)
  end

end