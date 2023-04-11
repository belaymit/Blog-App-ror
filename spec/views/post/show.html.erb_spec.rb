require 'rails_helper'
RSpec.describe 'Post index page', type: :feature do
  describe 'Post index view' do
    before(:each) do
      @user = User.create(name: 'Belay', photo: 'https://avatars.githubusercontent.com/u/27350247?v=4',
                          bio: 'I am engineer', posts_counter: 2)
      @post1 = Post.create(author: @user, title: 'My first post', text: 'This is my first post',
                           comments_counter: 0, likes_counter: 0)
      Comment.create(post: @post1, author: @user2, text: 'This the first comment on post')
      visit user_post_path(@user, @post1)
    end
    it 'can see the post\'s title.' do
      expect(page.body).to have_content(@post1.title)
    end
    it 'can see who wrote the post' do
      expect(page.body).to have_content(@post1.author.name)
    end
    it ' can see how many comments it has' do
      expect(page.body).to have_content(@post1.comments_counter.to_s)
    end
    it 'can see how many likes it has' do
      expect(page.body).to have_content(@post1.likes_counter.to_s)
    end
    it 'can see the post body' do
      expect(page.body).to have_content(@post1.text)
    end
    it 'can see the username of each commentor' do
      expect(page.body).to have_content(@user.name)
    end
    it 'can see the comment each commentor left' do
      expect(page.body).to have_content(@post1.text)
    end
  end
end
