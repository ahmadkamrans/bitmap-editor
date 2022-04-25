module Validator

  def validates_range keys
    raise("Validation error: pixel coordinates should be between 1 and 250")
  end

  def validates_command keys
    return raise("Invalid command: #{keys.first}") unless Editor::ALLOWED_COMMANDS.include? keys.first
  end

  def validates_params keys
    raise("Invalid params: #{keys}")
  end

  def validates_colour key
    raise("Invalid color")
  end
end
