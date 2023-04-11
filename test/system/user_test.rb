require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = User.create(
      name: 'Name',
      photo: 'https://avatars.githubusercontent.com/u/27350247?v=4',
      bio: 'I am software developer',
      posts_counter: 1
    )
    @post1 = Post.create(author: @user, title: 'This is a post', text: 'This is the post text', comments_counter: 0,
                         likes_counter: 0)
    @post2 = Post.create(author: @user, title: 'This is a second post', text: 'This is the post text',
                         comments_counter: 0, likes_counter: 0)
    @post3 = Post.create(author: @user, title: 'This is a third post', text: 'This is the post text',
                         comments_counter: 0, likes_counter: 0)
    visit users_path
  end

  test 'can see the username of all other users' do
    assert_selector 'h2'
  end
  # test 'When clicking on a user, I am redirected to that user\'s show page.' do
  #   click_link(@user.name)
  #   assert_current_path(user_path(@user))
  # end
end
