class API

    def get_info
    url = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
    response = HTTParty.get(url)
    ingredients = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].collect do |num| 
    response["drinks"][0]["strIngredient#{num}"] 
    end.compact.join(", ") 
    Cocktail.new(response["drinks"][0]["strDrink"], response["drinks"][0]["strInstructions"], ingredients)  
    end
end