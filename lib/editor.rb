class Editor
  include Validator

  attr_reader :bitmap

  ALLOWED_COMMANDS = %w[I C L V H F S X]

  def initialize
    @bitmap = Bitmap.new
  end

  def call
    begin
      while keys = Readline.readline("> ", true)
        validate(keys)
      end
    rescue => e
      puts e.message
      retry
    end
  end

  private

  def validate(keys)
    inputs = keys.split
    validates_command inputs
    canvas(inputs)
  end

  def canvas(inputs)
    command = inputs.first
    key     = inputs.shift
    return exit if command == 'X'

    return Object.const_get("Command::#{key}").new(bitmap,inputs).call!
  end
end
