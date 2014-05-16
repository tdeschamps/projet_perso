require 'gosu'

class Missile

  attr_accessor :x, :y

  def initialize(window)
    @image = Gosu::Image.new(window, "media/kim.png", false)
    @player_x, @player_y = 400, 400
  end

  def draw
    @image.draw(@player_x, @player_y, 1)
  end

end