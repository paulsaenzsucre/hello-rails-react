require 'rails_helper'

RSpec.describe 'Messages', type: :request do
  describe 'GET /index' do
    it 'returns http ok' do
      get '/greeting'
      expect(response).to have_http_status(:ok)
    end
  end
end
