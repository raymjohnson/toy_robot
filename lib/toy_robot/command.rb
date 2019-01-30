require 'pry'

module ToyRobot
  class Command
    def self.valid_command(command)
      if command == "REPORT"
        "REPORT"
      elsif command == "MOVE"
        "MOVE"
      elsif command == "LEFT"
        "LEFT"
      elsif command == "RIGHT"
        "RIGHT"
      elsif command.split.first == "PLACE"
        compass_positions = ["NORTH", "SOUTH", "EAST", "WEST"]
        coordinates = command.split.last.split(',')
        return command if coordinates.count == 3 && coordinates.first.to_i.between?(0, 4) && coordinates[1].to_i.between?(0, 4) && compass_positions.include?(coordinates.last)
      end
    end
  end
end
