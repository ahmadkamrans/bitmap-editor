module Command
  class S
    include Validator

    attr_reader :params, :bitmap

    def initialize bitmap,params
      @bitmap = bitmap
      @params = params
    end

    def call!
      validates_params params unless params.empty?

      return printf bitmap.pixels.inject("") {|row,col| row = row + (col.join + "\n") }
    end
  end
end
