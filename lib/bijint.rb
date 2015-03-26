require 'bijint/version'

module Bijint
  class Bijint
    @area = [
      'kyoto',
      'shizuoka',
      'saga',
      'kobe',
      'tochigi',
      'miyazaki',
      'kagoshima',
      'hiroshima',
      'kanazawa',
      'nara',
      'hokkaido',
      'nagasaki',
      'okayama',
      'gunma',
      'sendai',
      'kanagawa',
      'fukui',
      'nagoya',
      'tottori',
      'osaka',
      'akita',
      'okinawa',
      'nagano',
      'saitama',
      'tokyo',
      'ibaraki',
      'iwate',
      'niigata',
      'kagawa',
      'fukuoka',
      'kumamoto',
      'yamaguchi',
      'aomori',
      'chiba',
      'yamanashi',
      'hanayome',
      '2012jp',
      'tv-asahi',
      'sara',
      'mask-bijin',
      '2013jp',
      'cc',
      'wasedastyle',
      'megane',
      'hairstyle',
      '2011jp',
      'bimajo',
      'thailand',
      'hawaii',
      'taiwan',
      'jakarta'
    ]

    def now
      url(set_area, Time.now)
    end

    def random
      url(set_area, time_rand)
    end

    def md
      "[![bijint](#{url(set_area, Time.now)})](#{url(set_area, Time.now)})"
    end

    def md_random
      "[![bijint](#{url(set_area, time_rand)})](#{url(set_area, time_rand)})"
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

    def set_area
      %w(kyoto shizuoka saga kobe tochigi miyazaki kagoshima hiroshima kanazawa nara hokkaido nagasaki okayama gunma sendai kanagawa fukui nagoya tottori osaka akita okinawa nagano saitama tokyo ibaraki iwate niigata kagawa fukuoka kumamoto yamaguchi aomori chiba yamanashi hanayome 2012jp tv-asahi sara mask-bijin 2013jp cc wasedastyle megane hairstyle 2011jp bimajo thailand hawaii taiwan jakarta).shuffle.first
    end

    def time_rand(from = 0.0, to = Time.now)
      Time.at(from + rand * (to.to_f - from.to_f))
    end
  end
end
