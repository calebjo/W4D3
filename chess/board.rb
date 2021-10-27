require_relative "./pieces.rb"
require "byebug"
require "colorize"

class Board
    attr_accessor :rows

    def self.grid
        Array.new(8) { Array.new(8) }
    end
    
    
    def initialize
        @rows = Board.grid
        self.populate
    end
    
    def populate
        range = [0, 1, 6, 7]
        (0..@rows.length-1).each do |i|
            (0..@rows.length-1).each do |j|
                @rows[i][j] = NullPiece.new(:W, self, [i, j])
                # if range.include?(i)
            end
        end

        # ASSIGN KING HERE
        @rows[1][0] = Queen.new(:W, self, [1,0])
    end

    def print
        @rows.each do |row|
            p row.map{|ele| ele == nil ? ele : ele.symbol}
        end
    end

    def [](pos)
        x, y = pos.first, pos.last
        @rows[x][y]
    end

    def []=(pos, value)
        x, y = pos.first, pos.last
        @rows[x][y] = value
    end

    def valid_move?(star_pos, end_pos)
        valid_range = (0..7)
        unless valid_range.include?(end_pos.first) && valid_range.include?(end_pos.last)
            raise "Outside of the board." 
            return false
        end
        true
    end

    def move_piece(start_pos, end_pos)
        if valid_move?(start_pos, end_pos) && (self[start_pos] != nil) && (self[end_pos] == nil)
            this_piece = self[start_pos]
            self[end_pos] = this_piece
            self[start_pos] = nil
            return true
        else
            raise "Wrong move."
            return false
        end
    end

end

b = Board.new

b.print
puts "-----------------------------"
p b[[1,0]].moves
# b.print
