require 'spec_helper'

describe Bijint do

  describe 'method' do
    let(:bijint) { Bijint::Bijint.new }

    it 'now' do
      time = Time.now
      expect(bijint.now).to eq "http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg"
    end

    it 'random' do
      expect(bijint.random).to match /http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/\d{4}\.jpg/
    end

    it 'md' do
      time = Time.now
      expect(bijint.md).to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/#{time.strftime('%H%M')}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/#{time.strftime('%H%M')}\.jpg\)/
    end

    it 'md_random' do
      expect(bijint.md_random).to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/\d{4}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/\d{4}\.jpg\)/
    end
  end

end
