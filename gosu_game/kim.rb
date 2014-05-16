require 'gosu'

class Kim

  attr_accessor :x, :y, :vel_x, :vel_y

  def initialize(window, x, y, vel)
    @image = Gosu::Image.new(window, "media/kim.png", false)
    @x, @y = x, y
    @vel_x = @vel_y = 0
    @vel = vel
  end

  def accelerate
    @vel_x += Gosu::offset_x(1,@vel)
  end

  def move
    @x += @vel_x
    #@x %= 640
    #@y %= 480

    @vel_x *= 0.95
  end

  def self.test_for_collision(object_to_test_1, object_to_test_2)
    collision = false

    @object_to_test_1.each do |object1|
      @object_to_test_2.each do |object2|

      distance = Gosu::distance(
          object1.x.to_i,
          object1.y.to_i,
          object2.x.to_i,
          object2.y.to_i)

          collision = (distance <= 20)

        if collision
           object_to_test_1.delete(object1)
           object_to_test_2.delete(object2)
        end
      end
    end
    collision
  end

  def draw
    @image.draw(@x, @y, 1)
  end

end