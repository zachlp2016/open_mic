

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

#needs to take id of one of the jokes.
  def joke_by_id(id)
    
  end


end
