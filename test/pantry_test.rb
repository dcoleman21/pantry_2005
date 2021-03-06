require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def setup
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50
    })
    ingredient2 = Ingredient.new({
      name: "Macaroni",
      unit: "oz",
      calories: 200
    })
  end

  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
    assert_equal ({}), pantry.stock
  end

  def test_it_can_check_stock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50
    })

    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_it_can_restock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50
    })
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    assert_equal 15, pantry.stock_check(ingredient1)
  end
end
