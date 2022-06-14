require_relative 'piece.rb'
require 'byebug'
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        place_pieces
    end

    def place_pieces
        @rows.each.with_index do |subarr, i|
            subarr.each.with_index do |ele, j|
                if i == 0 || i == 1 || i == 6 || i == 7
                    @rows[i][j] = Piece.new(color, @rows)
                end
            end
        end
    end

    def [](pos)
        row = pos[0] 
        col = pos[1]
        @rows[row][col]
    end

    def []=(pos, value)
        row = pos[0]
        col = pos[1]
        @rows[row][col] = value
    end

    def move_piece(start_pos, end_pos)
        # debugger
        if self[start_pos] == nil || self[end_pos] != nil
          raise "Invalid position"
        end

        moving_piece = self[start_pos]
        self[start_pos] = nil
        self[end_pos] = moving_piece

    end


end

# p b = Board.new
# p b.move_piece([0,0], [3,3])
# p b.rows


