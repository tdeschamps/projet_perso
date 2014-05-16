require 'gosu'

class Player

  attr_accessor :player_x, :player_y

  def initialize(window)
    @image = Gosu::Image.new(window, "media/pharrel.png", false)
    @player_x, @player_y = 400, 400
    @vel_y = 0
  end

  def accelerate
    @vel_y -= Gosu::offset_y(1,0.1)
  end

  def move
    @player_y += @vel_y unless player_y > 750
    @vel_y *= 0.95
  end
  def draw
    @image.draw(@player_x, @player_y, 1)
  end

end