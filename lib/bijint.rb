require "bijint/version"

module Bijint
  class Bijint
    def now
      url(set_area, Time.now)
    end

    def random
      url(set_area, rand_time)
    end

    def lgtm
      "[![bijint](#{url(set_area, Time.now)})](#{url(set_area, Time.now)})"
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

    def set_area
      %w(tokyo).shuffle.first
    end

    def rand_time(from = Time.now, to = Time.now)
      Time.at(rand(from.to_f .. to.to_f))
    end
  end
end
