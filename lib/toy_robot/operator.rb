module ToyRobot
  class Operator

    def self.place(command)
      command_array = command.split.last.split(',')
      x = command_array.first.to_i
      y = command_array[1].to_i
      f = command_array.last
      @robot = ToyRobot::Robot.new(x: x, y: y, f: f)
    end

    def self.handle_command(command)
      valid_command = ToyRobot::Command.valid_command(command)
      if valid_command == "REPORT"
        self.report
      elsif valid_command == "MOVE"
        self.move
      elsif valid_command == "LEFT"
        self.left
      elsif valid_command == "RIGHT"
        self.right
      elsif valid_command.split.first == "PLACE" 
        self.place(valid_command)
      end
    end

    def self.report
      @robot.nil? ? nil : @robot.report
    end

    def self.move
      @robot.nil? ? nil : @robot.move
    end

    def self.left
      @robot.nil? ? nil : @robot.turn_left
    end

    def self.right
      @robot.nil? ? nil : @robot.turn_right
    end
  end
end
