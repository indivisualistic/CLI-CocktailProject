require 'pry'
class CLI
  attr_accessor :user_input, :cocktail
  def initialize
  @user_input = user_input
  @api = API.new 
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

  
  
  

  







  












