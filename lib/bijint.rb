require "bijint/version"

module Bijint
  class Bijint
    def now
      url(set_area, Time.now)
    end

    def lgtm
      "[![bijint](#{url(set_area, Time.now)})](#{url('tokyo', Time.now)})"
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

    def set_area
      %w(tokyo).shuffle.first
    end
  end
end
