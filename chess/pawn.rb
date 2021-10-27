require_relative "./piece.rb"
require "colorize"

class Pawn < Piece
    def symbol
        @color == :W ? "♙" : "♟"
    end

    def moves
        moves_arr = []
        new_pos = [@pos[0] + self.forward_dir, @pos[1]]
        if @board[new_pos].is_a?(NullPiece)
            moves_arr << new_pos
        elsif @board[[new_pos[0] + self.forward_dir, new_pos[1]]].is_a?(NullPiece) && self.at_start_row?
            moves_arr << new_pos
            moves_arr << [new_pos[0] + self.forward_dir, new_pos[1]]
        end

        moves_arr
    end

    private

    def at_start_row?
        if pos[0] == 1 || pos[0] == 6
            return true
        else
            return false
        end
    end

    def forward_dir
        if self.color == :W
            return -1
        else
            return 1
        end
    end

    def forward_steps
        if at_start_row?
            
        else

        end
    end

    def side_attacks
        if self.color == :W
            [[-1, -1],[-1, 1]]
        else
            [[1, 1],[1, -1]]
        end
    end
end