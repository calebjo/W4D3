require_relative "./piece.rb"
require_relative "./slideable.rb"

class Rook < Piece
    include Slideable

    def symbol
        self.color == :W ? "\u265C" : "\u2656"
    end

    protected

    def move_dirs
        horizontal_dirs
    end
end