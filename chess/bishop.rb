require_relative "./piece.rb"
require_relative "./slideable.rb"

class Bishop < Piece
    include Slideable

    def symbol
        self.color == :W ? "\u265D" : "\u2657"
    end

    protected

    def move_dirs
        diagonal_dirs
    end
end