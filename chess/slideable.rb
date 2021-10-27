require_relative "./piece.rb"

module Slideable
    HORIZONTAL_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRS = [[-1,1],[1,1],[-1,1],[-1,-1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        # returns the total moves arrays that work
    end

    private

    def move_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        #(pos[0]..)
    end
end