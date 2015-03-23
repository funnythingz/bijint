require 'spec_helper'

describe Bijint do

  describe 'now' do
    let(:bijint_now) {
      bijint = Bijint::Bijint.new
      bijint.now
    }

    it {
      time = Time.now
      expect(bijint_now).to eq "http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg"
    }
  end

end
