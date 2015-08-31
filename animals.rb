class Animal

  attr_reader :name, :breed, :gender, :favorite_toy
  attr_accessor :age

  def initialize
    @animals = {  # @ needed here?
      name: '',
      breed: '',
      age: '',
      gender: '',
      favorite_toy: ''
    }
  end


end