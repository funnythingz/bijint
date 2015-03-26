require "bijint/version"

module Bijint
  class Bijint
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
      _time_rand = time_rand
      "[![bijint](#{url(set_area, _time_rand)})](#{url(set_area, _time_rand)})"
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

    def set_area
      %w(tokyo).shuffle.first
    end

    def time_rand from = 0.0, to = Time.now
      Time.at(from + rand * (to.to_f - from.to_f))
    end
  end
end
