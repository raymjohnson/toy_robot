require 'forwardable'

module ToyRobot
  class Operator
    extend Forwardable

    attr_reader :robot

    delegate [:report, :move, :turn_left, :turn_right] => :robot

    def handle_command(command)
      valid_command = ToyRobot::Command.valid_command(command)

      if valid_command.split.first == "PLACE"
        place(valid_command)
      end

      return unless robot

      if valid_command == "REPORT"
        report
      elsif valid_command == "MOVE"
        move
      elsif valid_command == "LEFT"
        turn_left
      elsif valid_command == "RIGHT"
        turn_right
      end
    end

    def place(command)
      x, y, facing = command.split.last.split(',')
      @robot = ToyRobot::Robot.new(x: x.to_i, y: y.to_i, f: facing)
    end
  end
end
