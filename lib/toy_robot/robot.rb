module ToyRobot
  class Robot
    attr_reader :x, :y, :f

    def initialize(x: 0, y: 0, f: 'NORTH')
      @x = x
      @y = y
      @f = f
    end

    def report
      p "My current position is: #{@x}, #{@y}, #{@f}"
    end

    def move
      @y += 1 if @f == 'NORTH' && @y < 4
      @y -= 1 if @f == 'SOUTH' && @y > 0
      @x += 1 if @f == 'EAST' && @x < 4
      @x -= 1 if @f == 'WEST' && @x > 0
    end

    def turn_left
      return @f = 'WEST' if @f == 'NORTH'
      return @f = 'SOUTH' if @f == 'WEST'
      return @f = 'EAST' if @f == 'SOUTH'
      return @f = 'NORTH' if @f == 'EAST'
    end

    def turn_right
      return @f = 'EAST' if @f == 'NORTH'
      return @f = 'SOUTH' if @f == 'EAST'
      return @f = 'WEST' if @f == 'SOUTH'
      return @f = 'NORTH' if @f == 'WEST'
    end
  end
end
