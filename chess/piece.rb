# require_relative "./stepable.rb"
# require_relative "./board.rb"
require "colorize"

class Piece
    attr_reader :color
    
    def initialize(color, board, pos)
        @color, @board, @pos = color, board, pos
    end
    
    def to_s
    
    end

    def empty?

    end

    def valid_moves
        valid_range = (0..7)
        unless valid_range.include?(pos.first) && valid_range.include?(pos.last)
            raise "Outside of the board." 
            return false
        else
            
        end

        true
    end

    def pos=(val)

    end

    def Symbol

    end

    private

    def move_into_check?(end_pos)

    end
end

