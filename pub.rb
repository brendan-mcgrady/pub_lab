class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def add_cash_to_till(drink_price)
    @till += drink_price
  end

  def remove_cash_from_till(drink_price)
    @till -= drink_price
  end

  # def take_cash_from_customer(drink_price)
  #   @till.remove_cash_from_wallet(drink_price)
  #   @till.add_cash_to_till(drink_price)
  #   return @till
  # end

end
