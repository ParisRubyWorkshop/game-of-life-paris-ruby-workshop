require './cell.rb'

class Board
  def initialize(width:, height:)
    @cells = []
    @width = width
    @height = height
  end

  attr_reader :cells

  def populate
    @width.times do |i|
      @height.times do |j|
        @cells << Cell.new(x: i, y: j)
      end
    end
  end

  def fill_neighbors
    @cells.each do |cell|
      if cell.x == 0
        if cell.y == 0
          cell.neighbors = @cells.select do |c|
            (c.x + 1 == cell.x && (c.y == cell.y || c.y == cell.y + 1 )) || (c.x == cell.x && c.y == cell.y + 1)
          end
        elsif cell.y == @height
        else
        end
      elsif cell.x == @width
      elsif cell.y == 0
      elsif cell.y == @height
      else
      end
    end
  end

  # autre methode
  # BOARD = [
  #   {
  #     "a": Cell.new,
  #     b1: Cell.new,
  #     c1: Cell.new,
  #
  #   },
  #   {
  #     a2: Cell.new,
  #     b2: Cell.new,
  #   }
  # ].freeze
end
