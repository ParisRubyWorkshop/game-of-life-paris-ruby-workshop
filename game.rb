require './board.rb'

board = Board.new(width: 10, height: 10)
board.populate
board.fill_neighbors

puts board.cells
