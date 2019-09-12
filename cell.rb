class Cell
  def initialize(initial_state: [true, false].sample, x:, y:, neighbors: [])
    @x = x
    @y = y
    @neighbors = neighbors
    @state = initial_state # bool
  end

  attr_reader :x, :y
  attr_accessor :neighbors

  def alive?
    @state
  end

  def when_alive
    if @state
      if neighbors.count == 2 || neighbors.count == 3
        @state = true
      elsif neighbors.count < 2 || neighbors.count > 3
        @state = false
      end
    else
      @state = true if neighbors.count == 3
    end
  end

  def when_alive
    if neighbors.count == 2 || neighbors.count == 3
      @state = true
    elsif neighbors.count < 2 || neighbors.count > 3
      @state = false
    end
  end

  def when_dead
    @state = true if neighbors.count == 3
  end
end
