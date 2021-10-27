require_relative "./piece.rb"
require_relative "./stepable.rb"

class Knight < Piece

    include Stepable

    def symbol
        @color == :W ? "♞" : "♘"
    end
    
    protected
    def move_diffs 
        moves = [
            [2,1],
            [2,-1],
            [1,2],
            [-1,2],
            [-2,1],
            [-2,-1],
            [1,-2],
            [-1,-2],
        ]
    end


end