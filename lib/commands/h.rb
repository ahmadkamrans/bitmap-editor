module Command
  class H
    include Validator

    attr_reader :x_axis_1, :x_axis_2, :y_axis, :params, :bitmap, :colour

    def initialize bitmap,params
      @bitmap = bitmap
      @params = params
      @x_axis_1 = params[0].to_i
      @x_axis_2 = params[1].to_i
      @y_axis   = params[2].to_i
      @colour   = params[3].to_s
    end

    def perform
      validates_params params unless params.count == 4
      validates_range params unless [x_axis_1, x_axis_2, y_axis].all? {|num| num > 0 && num <= 250 }
      validates_colour if colour.match(/^[A-Z]$/).nil?

      min,max = [x_axis_1, x_axis_2].sort
      (min..max).to_a.each {|i| bitmap.pixels[y_axis-1][i-1] = @colour }
    end
  end
end
