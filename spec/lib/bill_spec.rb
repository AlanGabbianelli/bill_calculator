require 'spec_helper'

describe Bill do
  subject { Bill.new(subtotal: 9) }

  describe '#total' do
    it 'should return an amount' do
      expect(subject.total).to eq(9)
    end

    it 'should add the service charge' do
      bill = Bill.new(subtotal: 9, service_charge: 3)
      expect(bill.total).to eq(12)
    end

    it 'should add the service charge and subtract the discount' do
      bill2 = Bill.new(subtotal: 9, service_charge: 3, discount: 2)
      expect(bill2.total).to eq(10)
    end
  end

  describe '#split_by' do
    xit 'should return an array of amounts' do
      # Somthing like
      # expect(subject.split_by(3)).to eq([<an_amount_here>, <an_amount_here>, <an_amount_here>])
    end
  end
end
