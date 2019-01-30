require 'pry'

module ToyRobot
  class Command

    def self.valid?(command)
      # Present
      # Contains PLACE / LEFT / RIGHT / REPORT
      # If PLACE also contains coordinates and facing position
      # 'PLACE 0,0,NORTH'
      if command == "REPORT"
        true
      elsif command == "MOVE"
        true
      elsif command == "LEFT"
        true
      elsif command == "RIGHT"
        true
      elsif command.split.first == "PLACE"
        compass_position = "NORTH" || "SOUTH" || "EAST" || "WEST"
        coordinates = command.split.last.split(',')
        coordinates.count == 3 && coordinates.first.to_i.between?(0,4) && coordinates[1].to_i.between?(0,4) && coordinates.last == compass_position
      else
        false
      end
    end

  end
end
