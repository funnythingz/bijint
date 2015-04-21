require 'bijint/version'

module Bijint
  class Bijint
    def now
      url(set_area, Time.now)
    end

    def random
      url(set_area, time_rand)
    end

    def area(area)
      if area_list.include? area
        url(area, Time.now)
      else
        url(set_area, Time.now)
      end
    end

    def area_random(area)
      if area_list.include? area
        url(area, time_rand)
      else
        url(set_area, time_rand)
      end
    end

    def md
      url = now
      create_md(url)
    end

    def md_random
      url = random
      create_md(url)
    end

    def md_area(area)
      url = area(area)
      create_md(url)
    end

    def md_area_random(area)
      url = area_random(area)
      create_md(url)
    end

    def list
      area_list.sort.join(' ')
    end

    private

    def create_md(url)
      "[![bijint](#{url})](#{url})"
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

    def area_list
      %w(kyoto shizuoka saga kobe tochigi miyazaki kagoshima hiroshima kanazawa nara hokkaido nagasaki okayama gunma sendai kanagawa fukui nagoya tottori osaka akita okinawa nagano saitama tokyo ibaraki iwate niigata kagawa fukuoka kumamoto yamaguchi aomori chiba yamanashi hanayome 2012jp sara 2013jp cc wasedastyle megane hairstyle 2011jp bimajo thailand hawaii taiwan jakarta)
    end

    def set_area
      area_list.shuffle.first
    end

    def time_rand(from = 0.0, to = Time.now)
      Time.at(from + rand * (to.to_f - from.to_f))
    end
  end
end
