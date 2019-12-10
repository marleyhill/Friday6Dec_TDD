require "dice.rb"

describe Dice do
  # * As a board game player,
  # * So that I can play a game
  # * I want to be able to roll a dice
# first check that we have a dice, so just need to check we can make an instance
# of a class; to be_a the same as to be_instance_of; can make an instance inside
# the first test passes with just creating a class
  it 'has a dice to roll - creates an instance of Dice' do
    my_dice = Dice.new
    expect(my_dice).to be_a Dice
  end

  it 'has a method called roll' do
    expect(Dice.new).to respond_to(:roll).with(1).argument
  end

  it 'gives a user a number 1 to 6' do
    my_dice = Dice.new
    expect(my_dice.roll.first).to be_between(1,6)
  end

  it 'gives a random number between 1 and 6' do
    my_random_number = Dice.new.roll.first
    expect(1..6).to cover(my_random_number)
  end

  it 'I want to record each dice roll' do
    expect(Dice.new.roll(7).size).to eq(7)
  end

  it 'allows me to be able to get my current score' do
    d = Dice.new
    a = d.roll(2)
    s = a.sum
    expect(d.score).to eq('My current score is ' + s.to_s)
  end
end

  # expect(Dice.new.roll(10)).to all (be_between(1,6))

    # it 'allows you to roll any numbewr of dice' do
  #   number = 3
  #   expect(Dice.new).to respond_to(:roll(number))
  # end

# expect(my_dice.options).to eq([1, 2, 3, 4, 5, 6])

# * As a board game player,
# * So that I know how many steps I should move
# * Rolling a dice should give me a number between 1 and 6
  # it 'shows how many steps to move' do
  #   my_dice = Dice.new
  #   # my_dice.give_move
  #   expect(my_dice.give_move).to eq(1)
  # end

# * As a dice app developper,
# * So that I give players a good game experience
# * I want the dice roll to be randomly picked - don't check for true randomness

# * As a board game player,
# * So that I can play many types of games
# * I want to be able to roll any number of dice at the same time

# * As a board game player,
# * So that I know what my score was when I rolled several dice
# * I want to get the result of each dice roll
