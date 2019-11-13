require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../customer")

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

  def test_can_add_cash_to_till
    drink_price = 3
    assert_equal(103, @till.add_cash_to_till(drink_price))
  end

  def test_can_remove_cash_from_till
    drink_price = 7
    assert_equal(93, @till.remove_cash_from_till(drink_price))
  end

  # def test_till_can_take_cash_from_cust_wallet
  #   @till.take_cash_from_customer(@cust_wallet)
  #   assert_equal(100, @till.till())
  #   drink_price = 3
  #   assert_equal(3, @till.remove_cash_from_wallet(drink_price))
  #   assert_equal(103, @till.add_cash_to_till(drink_price))
  # end

end
