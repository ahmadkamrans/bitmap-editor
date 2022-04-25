module Command
  class I
    include Validator

    attr_reader :x_axis, :y_axis, :params, :bitmap

    def initialize bitmap,params
      @bitmap = bitmap
      @params = params
      @x_axis = params[0].to_i
      @y_axis = params[1].to_i
    end

    def call!
      validates_params params unless params.count == 2
      validates_range params unless [x_axis, y_axis].all? {|num| num > 0 && num <= 250 }

      bitmap.width  = x_axis
      bitmap.height = y_axis
      bitmap.pixels = bitmap.create_matrix
    end
  end
end
