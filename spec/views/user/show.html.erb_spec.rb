require 'rails_helper'
RSpec.describe 'User show page', type: :feature do
  describe 'User show view' do
    before(:each) do
      @user = User.create(name: 'Belay', photo: 'https://avatars.githubusercontent.com/u/27350247?v=4',
                          bio: 'I am engineer', posts_counter: 2)
      Post.create(author: @user, title: 'My first post', text: 'This is my first post')
      Post.create(author: @user, title: 'My second post', text: 'This is my second post')
      Post.create(author: @user, title: 'My third post', text: 'This is my third post')
      @last_post = Post.create(author: @user, title: 'My fourth post', text: 'This is my fourth post')

      visit user_path(@user.id)
    end

    it 'should show the user\'s profile picture' do
      expect(page.body).to include(@user.photo)
    end
    it 'should show the user\'s username' do
      expect(page.body).to have_content(@user.name)
    end

    it 'should show the number of post the user has created' do
      expect(page.body).to have_content(@user.posts_counter.to_s)
    end

    it 'should show the user\'s bio' do
      expect(page.body).to have_content(@user.bio)
    end

    it "should show a button that redirects to view all of a user's posts" do
      expect(page.body).to have_content('See all posts')
    end

    it "clicking see all posts should redirects to the user's post's index page" do
      click_link('See all posts')
      expect(page).to have_current_path(user_posts_path(@user))
    end
  end
end
