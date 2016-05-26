class BillDecorator
  def initialize(bill)
    @bill = bill
  end

  def total
    style_it(bill.total)
  end

  def split_by(number)
    # TODO: implement the split_by method
  end

  private

  def style_it(value)
    "£#{format('%.2f', value)}"
  end

  attr_reader :bill
end
