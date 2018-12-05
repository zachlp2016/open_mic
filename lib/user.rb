

class User

  attr_reader :name, :jokes, :tell

  def initialize(name)
    @name = name
    @jokes = []
    @tell
    @joke_by_id
  end

  def learn(jokes)
    @jokes << jokes
  end

  def tell(name, jokes)
  end

  def joke_by_id(jokes)
    return @jokes
  end
end
