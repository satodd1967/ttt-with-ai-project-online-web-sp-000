class Board
  
  attr_accessor :cells
  
  def initialize
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def reset!
    @cells.clear
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(input)
    @cells[input.to_i - 1]
  end
  
  def full?
    @cells.all? {|cells| cells == "X" || cells == "O"}
  end
  
  def turn_count
    @cells.count {|cells| cells != " "}
  end
  
  def taken?(position)
    if @cells[position.to_i - 1] == "X" || @cells[position.to_i - 1] == "O"
      true
    else
      false
    end
  end
  
  def valid_move?(input)
    if input.to_i.between?(1, 9) == true && taken?(input) == false
      true
    else
      false
    end
  end
  
  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end
  
end



