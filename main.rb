require_relative 'animals'
require_relative 'clients'
require_relative 'shelter'

happy_tails = Shelter.new('Happy Tails Animal Shelter')

def list_animals shelter
  shelter.animals.each_with_index {|animal, index| puts "#{index} : #{animal_name}"}
end

def list_clients shelter
  shelter.clients.each_with_index {|client, index| puts "#{index} : #{client_name}"}
end

def menu
  puts `clear`
  puts '*' * 52
  puts 'Welcome to Happy Tails Animal Shelter!'
  puts '*' * 52
  puts '1: Register with the shelter'
  puts '2: Give up animal for adoption'
  puts '3: See list of animals available for adoption'
  puts '4: See list of registered clients'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

while response.downcase != 'q'
  case response
    when '1'
    puts 'To register with the shelter, please answer the following questions:' 

    puts 'What is your name?'
    client_name = gets.chomp

    puts 'How old are you?'
    client_age = gets.to_i

    puts 'What is your gender?'
    client_gender = gets.chomp

    puts 'How many pets do you own?'
    client_number_of_pets = gets.chomp

    client = Client.new(client_name, client_age, client_gender, client_number_of_pets)

    puts "Your name is #{client_name}. You are #{client_age} and #{client_gender}. You own #{client_number_of_pets} pets."
    gets

  when '2'
    puts 'To register an animal for adoption, please answer the following questions:'

    puts 'What is its name?'
    animal_name = gets.chomp

    puts 'What breed is it?'
    animal_breed = gets.chomp

    puts 'How old is it?'
    animal_age = gets.chomp

    puts 'What is its gender?'
    animal_gender = gets.chomp

    puts 'What is its favourite toy?'
    animal_favorite_toy = gets.chomp

    animal = Animal.new(animal_name, animal_breed, animal_age, animal_gender, animal_favorite_toy)

    puts "The animal's name is #{animal_name}. It is #{animal_age} years old, a #{animal_gender} #{animal_breed} and its favorite toy is a #{animal_favorite_toy}."
    gets

  when '3'
    puts 'The animals available for adoption from Happy Tails Shelter are:'
    list_animals(happy_tails)
    gets

  when '4'
    puts 'The clients registered with Happy Tails Shelter are:'
    list_clients(happy_tails)
    gets

  end

  response = menu

end
