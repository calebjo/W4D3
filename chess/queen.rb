require_relative "./piece.rb"
require_relative "./slideable.rb"

class Queen < Piece
    def symbol
        self.color == :W ? "\u265B" : "\u2655"
    end
end