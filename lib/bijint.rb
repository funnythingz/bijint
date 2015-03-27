require 'bijint/version'

module Bijint
  class Bijint
    def now
      url(set_area, Time.now)
    end

    def random
      url(set_area, time_rand)
    end

    def md
      area = set_area
      "[![bijint](#{url(area, Time.now)})](#{url(area, Time.now)})"
    end

    def md_random
      area = set_area
      date = time_rand
      "[![bijint](#{url(area, date)})](#{url(area, date)})"
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

    def set_area
      %w(kyoto shizuoka saga kobe tochigi miyazaki kagoshima hiroshima kanazawa nara hokkaido nagasaki okayama gunma sendai kanagawa fukui nagoya tottori osaka akita okinawa nagano saitama tokyo ibaraki iwate niigata kagawa fukuoka kumamoto yamaguchi aomori chiba yamanashi hanayome 2012jp tv-asahi sara 2013jp cc wasedastyle megane hairstyle 2011jp bimajo thailand hawaii taiwan jakarta).shuffle.first
    end

    def time_rand(from = 0.0, to = Time.now)
      Time.at(from + rand * (to.to_f - from.to_f))
    end
  end
end
