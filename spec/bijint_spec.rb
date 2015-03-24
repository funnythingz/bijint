require 'spec_helper'

describe Bijint do

  describe 'method' do
    let(:bijint) { Bijint::Bijint.new }

    it 'now' do
      time = Time.now
      expect(bijint.now).to eq "http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg"
    end

    it 'random' do
      expect(bijint.random).to match /http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg/
    end

    it 'lgtm' do
      time = Time.now
      expect(bijint.lgtm).to eq "[![bijint](http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg)](http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg)"
    end

    it 'lgtm_random' do
      expect(bijint.lgtm_random).to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg\)/
    end
  end

end
