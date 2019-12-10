class Dice
  attr_reader :arr1

# don'r always need an init method to create an instance, so just defining a
# class will work to pass the first test
# also, just defining the method would pass respond_to test
  def roll(number = 1) ##provide default argument
    arr = Array.new
    number.times do
      @arr1 = arr.push(rand(1..6)) ## just need one number to pass the test
    end
    @arr1
  end

  def score
    @arr1 = [0] unless self.arr1.class != NilClass
    # self.arr1 = [0] unless self.arr1 != nil
    "My current score is #{self.arr1.sum}"
  end
end


  # def initialize
  #   @options = [1, 2, 3, 4, 5, 6]
  # end
  #
  # def give_move
  #   puts "these are options #{ @options }"
  # end
  #
  # def move
  #   @steps = @options[rand(6)]
  # end
