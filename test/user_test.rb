require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_name_returns_correctly
    assert_equal "Sal", @sal.name
  end

  def test_sal_can_learn_jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(joke_1)
    @sal.learn(joke_2)
    binding.pry
  end
end
