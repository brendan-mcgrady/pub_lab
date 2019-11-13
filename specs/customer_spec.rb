require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")

class CustomerTest < MiniTest::Test

  def setup
    @cust_name = Customer.new("Brendan", 50)
    @cust_wallet = Customer.new("Brendan", 50)
  end

  def test_create_customer__has_name
    assert_equal("Brendan", @cust_name.cust_name)
  end

  def test_create_cust_wallet__has_cash
    assert_equal(50, @cust_wallet.cust_wallet)
  end

  def test_can_remove_cash_from_wallet
    drink_price = 3
    assert_equal(47, @cust_wallet.remove_cash_from_wallet(drink_price))
  end

end
