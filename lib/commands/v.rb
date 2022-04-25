module Command
  class V

    include Validator

    attr_reader :x_axis, :y_axis_1, :y_axis_2, :params, :bitmap, :colour

    def initialize bitmap,params
      @bitmap = bitmap
      @params = params
      @x_axis   = params[0].to_i
      @y_axis_1 = params[1].to_i
      @y_axis_2 = params[2].to_i
      @colour   = params[3].to_s
    end

    def call!
      validates_params params unless params.count == 4
      validates_range params unless [x_axis, y_axis_1, y_axis_2].all? {|num| num > 0 && num <= 250 }
      validates_colour if colour.match(/^[A-Z]$/).nil?

      min,max = [y_axis_1, y_axis_2].sort
      (min..max).to_a.each {|i| bitmap.pixels[i-1][x_axis-1] = colour }
    end
  end
end
