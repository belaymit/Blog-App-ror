require 'rails_helper'
RSpec.describe 'User index page', type: :feature do
  describe 'User index view' do
    before(:each) do
      @user = User.create(name: 'Belay', photo: 'https://avatars.githubusercontent.com/u/27350247?v=4',
                          bio: 'I am engineer', posts_counter: 2)
      @user2 = User.create(name: 'Name', photo: 'https://avatars.githubusercontent.com/u/27350247?v=4',
                           bio: 'I am student', posts_counter: 3)
      @post1 = Post.create(author: @user, title: 'My first post', text: 'This is my first post',
                           comments_counter: 0, likes_counter: 0)
      Comment.create(post: @post1, author: @user2, text: 'This the first comment on post')
      visit user_posts_path(@user)
    end

    it 'can see the username of all other users' do
      expect(page.body).to have_content(@user.name)
    end
    it 'can see the profile picture for each user' do
      expect(page.body).to include(@user.photo)
    end
    it ' can see the number of posts each user has written' do
      expect(page.body).to have_content(@user.posts_counter.to_s)
    end
    it ' clicking on a user redirects to that user\'s show page' do
      click_link(@post1.title)
      expect(page).to have_current_path(user_post_path(@user, @post1))
    end
  end
end