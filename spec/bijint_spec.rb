require 'spec_helper'

describe Bijint do

  describe 'method' do
    let(:bijint) { Bijint::Bijint.new }

    it 'now' do
      time = Time.now
      expect(bijint.now).to match /http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/#{time.strftime('%H%M')}\.jpg/
    end

    it 'random' do
      expect(bijint.random).to match /http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/\d{4}\.jpg/
    end

    it 'area' do
      time = Time.now
      expect(bijint.area 'tokyo').to eq "http://www.bijint.com/assets/pict/tokyo/pc/#{time.strftime('%H%M')}.jpg"
    end

    it 'area_random' do
      time = Time.now
      expect(bijint.area_random 'tokyo').to match /http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg/
    end

    it 'md' do
      time = Time.now
      expect(bijint.md).to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/#{time.strftime('%H%M')}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/#{time.strftime('%H%M')}\.jpg\)/
    end

    it 'md_random' do
      expect(bijint.md_random).to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/\d{4}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/[a-z0-9]+\/pc\/\d{4}\.jpg\)/
    end

    it 'md_area' do
      time = Time.now
      expect(bijint.md_area 'tokyo').to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg\)/
    end

    it 'md_area_random' do
      expect(bijint.md_area_random 'tokyo').to match /\[!\[bijint\]\(http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg\)\]\(http:\/\/www\.bijint\.com\/assets\/pict\/tokyo\/pc\/\d{4}\.jpg\)/
    end

    it 'list' do
      expect(bijint.list).to eq '2011jp 2012jp 2013jp akita aomori bimajo cc chiba fukui fukuoka gunma hairstyle hanayome hawaii hiroshima hokkaido ibaraki iwate jakarta kagawa kagoshima kanagawa kanazawa kobe kumamoto kyoto megane miyazaki nagano nagasaki nagoya nara niigata okayama okinawa osaka saga saitama sara sendai shizuoka taiwan thailand tochigi tokyo tottori wasedastyle yamaguchi yamanashi'
    end
  end

end
