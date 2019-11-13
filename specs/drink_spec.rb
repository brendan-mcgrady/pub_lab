require("minitest/autorun")
require("minitest/rg")

require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink_name = Drink.new("Carling", 3)
    @drink_price = Drink.new("Carling", 3)
  end

  def test_create_drink__has_name
    assert_equal("Carling", @drink_name.name)
  end

  def test_create_drink__has_price
    assert_equal(3, @drink_price.price)
  end

end
