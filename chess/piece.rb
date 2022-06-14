# require_relative 'board.rb'

class Piece
    attr_reader :board
    def initialize(color, board, pos)
        @color = color
        @board = Board
        # @pos = pos
    end

    def inspect
        p "piece"
    end
end

# p b = Piece.new

p 