class CLI
  attr_accessor :user_input, :cocktail
  def initialize
  @user_input = ""
  @api = API.new 

  
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
  puts "Welcome To The Cocktail Carousel".yellow.bold
  line
  puts "How about the drink of the day?".yellow.bold
  line
  yes_or_no
  line
  user_input = gets.strip
    if user_input == "1"
      line
      @api.get_info
      @cocktail = Cocktail.all[-1]
      puts "Drink Name:".green
      line
      puts @cocktail.name
      line
    elsif user_input == "2"
      line
      thank_you
      exit
    else 
      invalid_entry
      start
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
    puts "Ingredients:".blue
    line
    puts @cocktail.ingredients
    line
    puts "Instructions:".red
    line
    puts @cocktail.instructions
    another_round
  elsif user_input == "2"
    line
    thank_you
  else 
    invalid_entry
    drink_maker
  end
 end
end

def another_round 
  line
  puts "How about another?"
  user_input = gets.chomp
    if user_input == "1"
    @api.get_info
    @cocktail = Cocktail.all[-1]
    puts "Drink Name:".green
    line
    puts @cocktail.name
    line
    drink_maker
  elsif user_input == "2"
    thank_you
  else 
    invalid_entry
    start
  end
end