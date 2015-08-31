class Client

  attr_reader :client_name 
  attr_accessor :client_age, :client_gender, :client_number_of_pets

  def initialize(client_name, client_age, client_gender, client_number_of_pets)
    @client_name = client_name
    @client_age = client_age
    @client_gender = client_gender
    @client_number_of_pets = client_number_of_pets
  end

end

