require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")

class CustomerTest < MiniTest::Test

  def setup
    @cust_name = Customer.new("Brendan", 50)
    @cust_wallet = Customer.new("Brendan", 50)
  end

  def test_create_customer__has_name
    assert_equal("Brendan", @cust_name.name)
  end

  def test_create_cust_wallet__has_cash
    assert_equal(50, @cust_wallet.wallet)
  end

end
