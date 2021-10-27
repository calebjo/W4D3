require_relative "./piece.rb"
require_relative "./slideable.rb"

class Bishop < Piece
    def symbol
        self.color == :W ? "\u265D" : "\u2657"
    end
end