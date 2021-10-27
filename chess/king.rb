require_relative "./piece.rb"
require_relative "./stepable.rb"

class King < Piece

    include Stepable

    super

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