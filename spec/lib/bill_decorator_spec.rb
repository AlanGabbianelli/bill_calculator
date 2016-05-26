require 'spec_helper'

describe BillDecorator do
  let(:bill) { double :bill }
  subject { BillDecorator.new(bill) }

  describe '#total' do
    it 'should return a string with currency and two decimals' do
      allow(bill).to receive(:total).and_return(10)
      expect(subject.total).to eq('£10.00')
    end
  end

  describe '#split_by' do
    it 'should return an array of strings with currency and two decimals' do
      allow(bill).to receive(:split_by).with(3).and_return([3.33, 3.33, 3.34])
      expect(subject.split_by(3)).to eq(['£3.33', '£3.33', '£3.34'])
    end
  end
end
