class Shelter

  attr_reader :name
  attr_accessor :animals, :clients

  def initialize name
    @name = name
    @animals = []
    @clients = []
  end

  def add_client(client_name, client_age, client_gender, client_number_of_pets)
    clients << Client.new(client_name, client_age, client_gender, client_number_of_pets)
  end

  def add_animal(animal_name, animal_age, animal_breed, animal_gender, animal_favorite_toy)
    animals << Animal.new(animal_name, animal_age, animal_breed, animal_gender, animal_favorite_toy)
  end

end