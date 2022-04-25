class Bitmap
  
  attr_accessor :height, :width, :pixels

  def initialize width=0,height=0
    @width  = width
    @height = height
    @pixels = Array.new
  end

  def create_matrix
    @pixels = Array.new(@height) { Array.new(@width) {"O"} }
  end
end
