require 'rails_helper'
RSpec.describe 'Post index page', type: :feature do
  describe 'Post index view' do
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

    it 'can see the user\'s profile picture' do
      expect(page.body).to include(@user.photo)
    end

    it 'can see the username' do
      expect(page.body).to have_content(@user.name)
    end

    it ' can see the number of posts each user has written' do
      expect(page.body).to have_content(@user.posts_counter.to_s)
    end

    it 'can see a post\'s title' do
      expect(page.body).to have_content(@post1.title)
    end

    it 'can see a post\'s body' do
      expect(page.body).to have_content(@post1.text)
    end

    it 'can see the first comment on a post' do
      expect(page.body).to have_content(@post1.comments.first.text)
    end

    it 'can see how many comments a post has.' do
      expect(page.body).to have_content(@post1.comments_counter.to_s)
    end

    it 'can see how many likes a post has.' do
      expect(page.body).to have_content(@post1.likes_counter.to_s)
    end

    it 'can\'t see a section for pagination since there are not more posts than fit on the view' do
      expect(page.body).not_to have_content('Pagination')
    end

    it 'When I click on a post, it redirects me to that post\'s show page' do
      click_link(@post1.title)
      expect(page).to have_current_path(user_post_path(@user, @post1))
    end
  end
end
