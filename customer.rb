class Customer

  attr_reader :cust_name, :cust_wallet

  def initialize(cust_name, cust_wallet)
    @cust_name = cust_name
    @cust_wallet = cust_wallet
  end

  def remove_cash_from_wallet(drink_price)
    change = (@cust_wallet - drink_price)
    return change
  end

end
