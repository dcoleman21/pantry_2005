class Pantry
  attr_reader :stock,
              :ingredients

  def initialize
    @stock = {}
    @ingredients = 0
  end

  def stock_check(ingredient)
    @stock[:ingredient] = ingredients
  end

  def restock(ingredient, quantity)
    @stock.each do |ingredient, quantity|
      require "pry"; binding.pry
      @stock[:ingredient] = ingredient + quantity

    end
  end


end
