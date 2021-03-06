require "./range"

module Scry
  struct Location
    JSON.mapping({
      uri:   String,
      range: Range,
    }, true)

    def initialize(@uri, @range)
    end
  end
end
