class Bill
  def initialize(subtotal: 0, service_charge: 0, discount: 0)
    @subtotal = subtotal
    @service_charge = service_charge
    @discount = discount
  end

  def total
    subtotal + service_charge - discount
  end

  def split_by(number)
    # TODO: implement the split method
  end

  attr_reader :subtotal, :service_charge, :discount
end
