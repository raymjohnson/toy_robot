require 'pry'

module ToyRobot
  class Command

    def self.command_validation(command)
      # Present
      # Contains PLACE / LEFT / RIGHT / REPORT
      # If PLACE also contains coordinates and facing position
      # 'PLACE 0,0,NORTH'
      if command == "REPORT"
        return 'REPORT' && Robot.report
      elsif command == "MOVE"
        "MOVE"
      elsif command == "LEFT"
        "LEFT"
      elsif command == "RIGHT"
        "RIGHT"
      elsif command.split.first == "PLACE"
        compass_position = "NORTH" || "SOUTH" || "EAST" || "WEST"
        coordinates = command.split.last.split(',')
        # first count
        # second check integer between 0 & 4
        # check that last is compass position
        return command if coordinates.count == 3 && coordinates.first.to_i.between?(0,4) && coordinates[1].to_i.between?(0,4) && coordinates.last == compass_position
      end
    end

  end
end
