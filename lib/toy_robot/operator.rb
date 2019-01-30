module ToyRobot
  class Operator
      
    def initialize
    end

    def place(x,y,f)
      @robot = ToyRobot::Robot.new(x: x, y: y, f: f)
    end

  end
end