require 'gosu'
require_relative 'player'
require_relative 'missile'
require_relative 'kim'

class GameWindow < Gosu::Window
  def initialize
    super(1200, 800, false)
    self.caption = "Gosu Tutorial Game"
    @background_image = Gosu::Image.new(self, "media/top_gun.jpg", true)
    @player = Player.new(self)
    @missile = []
    @kim = []
    @running = true
    @score = 0
    @explosion = []
  end

  def update
    #Move player
    @player.player_x -= 1 if button_down? Gosu::Button::KbLeft
    @player.player_x += 1 if button_down? Gosu::Button::KbRight

    if button_down? Gosu::Button::KbUp
       @player.player_y -= 1
    elsif button_down? Gosu::Button::KbDown
      @player.player_y += 1
    else
      @player.accelerate unless @player.player_y > 800
      @player.move unless @player.player_y > 800
    end

    if button_down? Gosu::Button::KbSpace
      @missile << Missile.new(self, @player.player_x, @player.player_y) if rand(4)==1
    end


    @kim << Kim.new(self, 0, rand(100), rand(10.0..50.0)) if rand(50) == 1


    @kim.each do |kim|
        kim.accelerate
        kim.move
    end

    @missile.each do |missile|
        missile.accelerate
        missile.move
    end

    if @kim.length > 2 && @missile.length > 2
      if Kim.test_for_collision(@kim,@missile)
        @explosion << Explosion.new(object1.x,object1.y)
      end
    end
  end

  def draw
    @player.draw
    @missile.each do |missile|
      missile.draw if missile.is_a? Missile
    end

    @kim.each do |kim|
      kim.draw if kim.is_a? Kim
    end

    @explosion.each do |explosion|
      explosion.draw if explosion.is_a? Explosion
    end

    @background_image.draw(0, 0, 0);
  end

  def button_down(id)
    if id == Gosu::KbEscape
      close
    end
  end
end

window = GameWindow.new
window.show