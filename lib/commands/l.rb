module Command
  class L
    include Validator

    attr_reader :x_axis, :y_axis, :params, :bitmap, :colour

    def initialize bitmap,params
      @bitmap = bitmap
      @params = params
      @x_axis = params[0].to_i
      @y_axis = params[1].to_i
      @colour = params[2].to_s
    end

    def call!
      validates_params params unless params.count == 3
      validates_range params unless [x_axis, y_axis].all? {|num| num > 0 && num <= 250 }
      validates_colour if colour.match(/^[A-Z]$/).nil?

      bitmap.pixels[@y_axis-1][@x_axis-1] = colour
    end
  end
end
