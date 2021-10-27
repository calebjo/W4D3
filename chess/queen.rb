require_relative "./piece.rb"
require_relative "./slideable.rb"

class Queen < Piece
    include Slideable

    def symbol
        self.color == :W ? "\u265B" : "\u2655"
    end

    private

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end
end