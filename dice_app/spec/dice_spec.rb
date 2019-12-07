require "dice.rb"

describe Dice do
  # * As a board game player,
  # * So that I can play a game
  # * I want to be able to roll a dice

  it 'has a dice to roll' do
    my_dice = Dice.new
    expect(my_dice.options).to eq([1, 2, 3, 4, 5, 6])
  end


# * As a board game player,
# * So that I know how many steps I should move
# * Rolling a dice should give me a number between 1 and 6
  it 'shows how many steps to move' do
    my_dice = Dice.new
    # my_dice.give_move
    expect(my_dice.give_move).to eq(1)
  end
end

# * As a dice app developper,
# * So that I give players a good game experience
# * I want the dice roll to be randomly picked

# * As a board game player,
# * So that I can play many types of games
# * I want to be able to roll any number of dice at the same time

# * As a board game player,
# * So that I know what my score was when I rolled several dice
# * I want to get the result of each dice roll
