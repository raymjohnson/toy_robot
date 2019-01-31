require 'pry'

module ToyRobot
  class Command
    def self.valid_command(command)
      if %w(REPORT MOVE LEFT RIGHT).include?(command)
        command
      elsif command.split.first == "PLACE"

        x, y, f = command.split.last.split(',')
        return command if valid_placement?(x, y, f)
      end
    end

    def self.valid_placement?(x, y, f)
      return false unless x && y && f

      compass_positions = ["NORTH", "SOUTH", "EAST", "WEST"]

      x.to_i.between?(0, 4) &&
        y.to_i.between?(0, 4) &&
        compass_positions.include?(f)
    end
  end
end
