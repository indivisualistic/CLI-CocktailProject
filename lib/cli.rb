require 'pry'
class CLI
  attr_accessor :user_input, :cocktail, :i
  def initialize
  @user_input = user_input
  @api = API.new 
  @i = -1
  end

  def start
    puts "Welcome To The Cocktail Carousel"
 
    puts "How about the drink of the day?"
  end
  if user_input == "1"
    
    @api.get_info
    @cocktail = Cocktail.all[i]
    puts "Drink Name:"
    puts Cocktail.all[i].name
    
  elsif user_input == "2"
    
    
  end

  def drink_maker
    puts "Would you like to know how to make it?"
  end


  
  
  

  







  












