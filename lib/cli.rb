require 'pry'
class CLI
  attr_accessor :user_input, :cocktail, :i
  def initialize
  @user_input = user_input
  @api = API.new 
  @i = -1
  
  end

  def line
    puts ""
  end

  def thank_you
    puts "Thank you, come again!"  
  end

  def yes_or_no
    puts "Type '1' for yes or '2' for no:"  
  end

  def invalid_entry
    puts "Wrong input...Please try again!" 
  end

def start
  puts "Welcome To The Cocktail Carousel"
  line
  puts "How about the drink of the day?"
  line
  yes_or_no
  line
  user_input = gets.strip
    if user_input == "1"
      line
      @api.get_info
      @cocktail = Cocktail.all[i]
      puts "Drink Name:"
      puts Cocktail.all[i].name
      line
    elsif user_input == "2"
      line
      thank_you
      exit
    end
    drink_maker
end

def drink_maker
  puts "Would you like to know how to make it?"
  line
  yes_or_no
  line
  user_input = gets.chomp
  if user_input == "1" 
    line
    puts Cocktail.all[i].ingredients
    line
    puts Cocktail.all[i].instructions
    how_to_guide
  elsif user_input == "2"
    line
    thank_you
  else 
    invalid_entry
    drink_maker
  end
 end
end

def how_to_guide 
  line
  puts "How about another?"
  user_input = gets.chomp
  if user_input == "1"
    @api.get_info
    puts Cocktail.all[i].name
    drink_maker
  elsif user_input == "2"
    thank_you
  else 
    invalid_entry
    start
  end
end

  







  












