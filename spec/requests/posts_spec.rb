require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  before(:each) do
    @user = User.create(name: 'Belay', photo: 'https://i.imgur.com/1JZ1Q2r.jpg', bio: 'This is my biography',
                        posts_counter: 2)
    @post = Post.create(author: @user, title: 'My post', text: 'first post', comments_counter: 1,
                        likes_counter: 2)
  end
  describe 'GET post#index' do
    before(:each) { get user_posts_path(@user) }
    it 'Should be success' do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' view" do
      expect(response).to render_template(:index)
    end
    it 'should return correct placeholder text' do
      expect(response.body).to include('Posts')
    end
    it "does not render a 'show' view" do
      expect(response).to_not render_template(:show)
    end
  end
  describe 'GET post#show' do
    before(:each) { get user_post_path(@user, @post) }

    it 'Should be success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end

    it 'should return correct placeholder text' do
      expect(response.body).to include('Posts')
    end
  end
end
