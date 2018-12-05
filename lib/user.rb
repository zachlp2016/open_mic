class User

  attr_reader :name

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(jokes)
    @jokes  <<  jokes
  end

end
