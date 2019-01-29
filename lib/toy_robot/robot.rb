module ToyRobot
  class Robot

    attr_accessor :x, :y, :f

    def initialize(x: 0 ,y: 0 ,f: 'NORTH')
      @x = x
      @y = y
      @f = f
    end

    def report
      return "My current position is: #{@x}, #{@y}, #{@f}"
    end

  end

end
