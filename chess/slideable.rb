require_relative "./piece.rb"
require "byebug"
module Slideable
    HORIZONTAL_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRS = [[-1,1],[1,1],[1,-1],[-1,-1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        # create array to collect moves

        # iterate over each of the directions in which a Slideable piece can move
        # use `#move_dirs` method defined in piece's class to get this info
        # for each direction, collect all possible moves in that direction and
        #  and add to your moves array, using `grow_unblocked_moves_in_dir`
        moves = []
        self.move_dirs.each do |dir|
            moves += grow_unblocked_moves_in_dir(dir[0], dir[1])
        end
        moves
    end

    private

    def move_dirs
        raise NotImplementedError, "Not implemented"
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        moves_arr = []
        new_pos = [@pos[0]+dx, @pos[1]+dy]
        while @board.valid_pos?(new_pos) && @board[new_pos].is_a?(NullPiece)
            moves_arr << new_pos
            new_pos = [new_pos[0] + dx, new_pos[1] + dy]
        end
        moves_arr << new_pos if @board.valid_pos?(new_pos) && @board[new_pos].color != self.color

        moves_arr
    end
end

