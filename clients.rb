class Client

  attr_reader :name 
  attr_accessor :age, :gender, :number_of_pets

  def initialize
    @clients = { # @ needed here?
      name: '',
      age: '',
      gender: '',
      number_of_pets: ''
    }
  end

end