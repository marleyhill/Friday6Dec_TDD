class Dice
  attr_reader :options

  def initialize
    @options = [1, 2, 3, 4, 5, 6]
  end

  def give_move
    puts "these are options #{ @options }"
  end
  #
  # def move
  #   @steps = @options[rand(6)]
  # end

end
