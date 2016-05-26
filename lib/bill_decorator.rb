class BillDecorator
  def initialize(bill)
    @bill = bill
  end

  def total
    style_it(bill.total)
  end

  def split_by(number)
    bill.split_by(number).map { |amount| style_it(amount) }
  end

  private

  def style_it(value)
    "£#{format('%.2f', value)}"
  end

  attr_reader :bill
end
