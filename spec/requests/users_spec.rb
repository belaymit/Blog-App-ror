require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:each) do
    @user = User.create(name: 'Belay', photo: 'https://i.imgur.com/1JZ1Q2r.jpg', bio: 'This is my biography',
      posts_counter: 2)
    end
   describe 'GET #index' do
    before(:each) { get users_path(@user) }

    it 'Should be success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' view" do
      expect(response).to render_template(:index)
    end

    it 'Should return correct placeholder text' do
      expect(response.body).to include('All Users')
    end

    it "does not render a 'show' view" do
      expect(response).to_not render_template(:show)
    end
  end
  describe 'GET #show' do
    before(:each) { get user_path(@user) }

    it 'returns a successful response' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' view" do
      expect(response).to render_template(:show)
    end

    it 'Should return correct placeholder text' do
      expect(response.body).to include('Users Details')
    end
  end
end
