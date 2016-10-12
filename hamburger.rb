class Hamburger
  def initialize(condiments)
    #we do not know if this will be an array or not - we could guess yes because plural word, but that's it!
    @base_calories = 300
    @condiments = condiments
  end

  def to_s
    "Hamburger"
  end

  def calories
    #no @ so it is private, so it does not exist anywhere outside of this class
    sum = 0

    @condiments.each do | condiment |
      #each tells us it is an array
      #for all comdiments, for each, do open the condiment and then
      sum += condiment.calories if condiment.respond_to? "calories"
      #call calories on it and then add it to the sum if there are calories in it
        #inline conditional statement - add to the sum if it can respond to calories / it knows what calories means
      #take the sum and then add it to whatever I have passed into it "+="
    end
    #way you name variables is important just so you can understand what your code means and so your variables make sense to you

    return @base_calories + sum
  end
end
