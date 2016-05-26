require 'bigdecimal'
require 'bigdecimal/util'

class Bill
  def initialize(subtotal: 0, service_charge: 0, discount: 0)
    @subtotal = subtotal.to_d
    @service_charge = service_charge.to_d
    @discount = discount.to_d
    @friends_array = []
  end

  def total
    (subtotal + service_charge - discount).to_f.round(2)
  end

  def split_by(number)
    (number - 1).times { friends_array << split_amount(number).to_f }
    friends_array << (split_amount(number) + remainder(number)).to_f
  end

  private

  attr_reader :subtotal, :service_charge, :discount, :friends_array

  def split_amount(number)
    (total.to_d / number).round(2)
  end

  def remainder(number)
    total.to_d - split_amount(number) * number
  end
end
