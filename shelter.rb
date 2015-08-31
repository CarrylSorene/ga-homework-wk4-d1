class Shelter

  attr_reader :name
  attr_accessor :animals, :clients

  def initialize name
    @name = name
    @animals = {}
    @clients = {}
  end

  def add_client
    clients Client.new{}
  end

  def add_animal
    animals Animal.new{}
  end

end