require 'gosu'

class Missile

  attr_accessor :x, :y, :vel_x, :vel_y

  def initialize(window, x, y)
    @image = Gosu::Image.new(window, "media/kanye.png", false)
    @x, @y = x, y
    @vel_x = @vel_y = 0
  end

  def accelerate
    @vel_y += Gosu::offset_y(1,0.5)
  end

  def move
    @y += @vel_y
    #@x %= 640
    #@y %= 480

    @vel_y *= 0.95
  end

  def draw
    @image.draw(@x, @y, 1)
  end

end