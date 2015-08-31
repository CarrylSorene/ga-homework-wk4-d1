require_relative 'animals'
require_relative 'clients'
require_relative 'shelter'

happy_tails = Shelter.new('Happy Tails Animal Shelter')

def list_animals shelter
  shelter.animals.each_with_index # work with hash? #ouput hash k/v
end

def list_clients shelter
  shelter.clients.each_with_index # ditto above?
end

def menu
  puts `clear`
  puts '*' * 52
  puts 'Welcome to Happy Tails Animal Shelter!'
  puts '*' * 52
  puts '1: See list of animals available for adoption'
  puts '2: See list of registered clients'
  puts '3: Register with the shelter'
  puts '4: Give up animal for adoption'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

while response.downcase != 'q'
  case response
  when '1'
    puts 'The animals available for adoption are:'
    #list animals from hash - by name, then choose name for more info or display all at once?
    list_animals(happy_tails) # ?hash
    gets
  when '2'
    puts 'The clients registered with Happy Tails Shelter are:'
    list_clients(happy_tails) #ditto?
    gets
  when '3'
    puts 'To register with the shelter, please answer the following questions:' #further input or continue qu?
    puts 'What is your name?'
    client_name = gets.chomp
    puts client_name #?
    gets
    puts 'How old are you?'
    client_age = gets.to_i
    puts client_age #?
    gets
    puts 'What is your gender?'
    client_gender = gets.chomp
    puts client_gender #?
    gets
    puts 'How many pets do you own?'
    client_total_pets = gets.chomp
    puts client_total_pets #?
    gets
  when '4'
    puts 'To register an animal for adoption, please answer the following questions:'
    puts 'What is its name?'
    animal_name = gets.chomp
    puts animal_name
    gets
    puts 'What breed is it?'
    animal_breed = gets.chomp
    puts animal_breed
    gets
    puts 'How old is it?'
    animal_age = gets.to_i
    puts animal_breed
    gets
    puts 'What is its gender?'
    animal_gender = gets.chomp
    puts animal_gender
    gets
    puts 'What is its favorite toy?'
    animal_toy = gets.chomp
    puts animal_toy
    gets
  end

  response = menu

end
