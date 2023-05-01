class Message < ApplicationRecord
  def to_json(*_option)
    {message: message}.to_json
  end
end
