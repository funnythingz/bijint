require 'spec_helper'

describe Bijint do

  describe 'now' do
    let(:bijint) {
      Bijint::Bijint.new
    }

    it {
      time = Time.now
      expect(bijint.now).to eq "http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg"
    }
  end

  describe 'lgtm' do
    let(:bijint) {
      Bijint::Bijint.new
    }

    it {
      time = Time.now
      expect(bijint.lgtm).to eq "[![bijint](http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg)](http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg)"
    }
  end

end
