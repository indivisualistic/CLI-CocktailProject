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

  if user_input == "1" 
    
    puts Cocktail.all[i].ingredients
    
    puts Cocktail.all[i].instructions
   
  elsif user_input == "2"
    
  else 
    
  end

  def how_to_guide 
    
    puts "How about another?"

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
  end



  
  
  

  







  












