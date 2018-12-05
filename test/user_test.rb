require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
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
    @sal.jokes
    assert_equal 2, @sal.jokes.count
  end

  def test_sal_can_tell_ali_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.tell(@ali, joke_1)
    @sal.tell(@ali, joke_2)
  end

  def test_joke_by_id
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(joke_1)
    new_joke_id = @sal.jokes.key
    assert_equal new_joke_id, @sal.joke_by_id(1)
  end

    # pry(main)> sal.tell(ali, joke_1)
    #
    # pry(main)> sal.tell(ali, joke_2)
    #
    # pry(main)> ali.jokes
    # # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
    #
    # pry(main)> ali.joke_by_id(1)
    # # => #<Joke:0x00007fb71da169f0...>
    #
    # pry(main)> ali.joke_by_id(2)
    # # => #<Joke:0x00007fb71d8e0bd0...>
end
