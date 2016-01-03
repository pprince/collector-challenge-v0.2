require "spec_helper"

describe Collector do
  before do
    db[:collectors].insert(
      payment_day: 10, 
      frequency: 0,
      recurrent: false
    )
    db[:collectors].insert(
      payment_day: 10, 
      frequency: 1,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 15, 
      frequency: 1,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 20, 
      frequency: 1,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 30, 
      frequency: 4,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 30, 
      frequency: 2,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 20, 
      frequency: 3,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 10, 
      frequency: 5,
      recurrent: true
    )
    db[:collectors].insert(
      payment_day: 30, 
      frequency: 5,
      recurrent: true
    )
  end

  subject(:collector) { described_class.new(db) }

  describe "payments collected in" do
    it {
      expect( collector.payments_collected_in(Date.new(2016, 1, 1)) ).to eq(9)
    }

    it {
      expect( collector.payments_collected_in(Date.new(2016, 2, 1)) ).to eq(4)
    }

    it {
      expect( collector.payments_collected_in(Date.new(2016, 4, 1)) ).to eq(5)
    }

    it {
      expect( collector.payments_collected_in(Date.new(2016, 6, 1)) ).to eq(5)
    }

    it {
      expect( collector.payments_collected_in(Date.new(2016, 10, 1)) ).to eq(6)
    }
    
    it {
      expect( collector.payments_collected_in(Date.new(2016, 3, 20)) ).to eq(2)
    }

    it {
      expect( collector.payments_collected_in(Date.new(2016, 10, 15)) ).to eq(4)
    }
  end
end
