class Message < ApplicationRecord
  def to_json(*_option)
    { message: }.to_json
  end
end
