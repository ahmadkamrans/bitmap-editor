module Command
  class C
    include Validator

    attr_reader :params, :bitmap

    def initialize bitmap, params
      @bitmap = bitmap
      @params = params
    end

    def call!
      validates_params params unless params.empty?
      bitmap.pixels.each {|col| col.fill("O") }
    end
  end
end
