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
        moves_array = []

        (0..7).each do |row|
            (0..7).each do |col|
                current_pos = [row, col]
                if @board[current_pos].is_a?(NullPiece)
                    moves_array << current_pos
                else
                    moves_array << current_pos if @board[current_pos].color != self.color
                end
            end
        end
        # narrow this down later for each subclass
        moves_array
    end

    def pos=(val)
        
    end

    def Symbol

    end

    private

    def move_into_check?(end_pos)

    end
end

