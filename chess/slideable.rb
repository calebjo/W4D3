module Slideable
    HORIZONTAL_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRS = [[-1,1],[1,1],[-1,1],[-1,-1]]

    def horizontal_dirs
        # VERTICAL
        (1..7).each do |i|
            HORIZONTAL_DIRS << [0, i]
            HORIZONTAL_DIRS << [0, -i]
        end
        # HORIZONTAL
        (1..7).each do |j|
            HORIZONTAL_DIRS << [i, 0]
            HORIZONTAL_DIRS << [-i, 0]
        end
    end

    def diagonal_dirs
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

class Rook
    def symbol
        self.color == :W ? "\u265C" : "\u2656"
    end
end

class Bishop
    def symbol
        self.color == :W ? "\u265D" : "\u2657"
    end
end

class Queen
    def symbol
        self.color == :W ? "\u265B" : "\u2655"
    end
end