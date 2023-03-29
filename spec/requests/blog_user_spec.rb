require 'rails_helper'

RSpec.describe 'BlogUsers', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/blog_user/index'
      expect(response).to have_http_status(:success)
    end
  end
end
