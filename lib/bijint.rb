require "bijint/version"

module Bijint
  class Bijint

    def now
      url('tokyo', Time.now)
    end

    def url(area, time)
      "http://www.bijint.com/assets/pict/#{area}/pc/#{time.strftime('%H%M')}.jpg"
    end

  end
end
