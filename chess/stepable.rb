require_relative "./piece.rb"

class King < Piece

    include Stepable

    def symbol
        @color == "white" ? "♚" : "♔"
    end
    
    protected
    def move_diffs 
        moves = [
            [0,1],
            [0,-1],
            [1,0],
            [-1,0],
            [1,1],
            [-1,1],
            [1,-1],
            [-1,-1],
        ]
    end

end

class Knight < Piece

end

module Stepable
    def moves
        moves_array = []

        self.move_diffs.each do |dif|
            this_x, this_y = @pos[0], @pos[1]
            new_pos = [this_x + dif[0], this_y + dif[1]]

            moves_array << new_pos if piece.valid_moves.include?(new_pos)
        end

        moves_array
    end


    private 
    def moves_diffs
        raise NotImplementedError, "Not implemented"
    end

end