require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")

class PubTest < MiniTest::Test

  def setup
    @name = Pub.new("The Clansman", 100, ["Carling", "Tennents", "Whiskey", "Vodka"])
    @till = Pub.new("The Clansman", 100, ["Carling", "Tennents", "Whiskey", "Vodka"])
    @drinks = Pub.new("The Clansman", 100, ["Carling", "Tennents", "Whiskey", "Vodka"])
  end

  def test_create_pub__has_name
    assert_equal("The Clansman", @name.name)
  end

  def test_create_till__has_cash
    assert_equal(100, @till.till)
  end

  def test_create_drinks_array__has_drinks
    assert_equal(["Carling", "Tennents", "Whiskey", "Vodka"], @drinks.drinks)
  end

end
