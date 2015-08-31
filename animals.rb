class Animal

  attr_reader :animal_name, :animal_breed, :animal_gender, :animal_favorite_toy
  attr_accessor :animal_age

  def initialize(animal_name, animal_age, animal_breed, animal_gender, animal_favorite_toy)
    @animal_name = animal_name
    @animal_age = animal_age
    @animal_breed = animal_breed
    @animal_gender = animal_gender
    @animal_favorite_toy = animal_favorite_toy
  end

end