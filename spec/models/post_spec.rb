require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    User.create(name: 'Someone', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'My blog',
                posts_counter: 0)
  end

  before(:each) do
    @new_post = Post.new(title: 'First post', author_id: subject.id, comments_counter: 0, likes_counter: 0)
  end

  it 'Should be valid' do
    expect(@new_post).to be_valid
  end

  it 'Post should have a title' do
    @new_post.title = nil
    expect(@new_post).to_not be_valid
  end

  it 'Post title should be at most 250 characters' do
    @new_post.title = 'm' * 251
    expect(@new_post).to_not be_valid
  end

  it 'Post commentsCounter should be an integer' do
    @new_post.comments_counter = 'one'
    expect(@new_post).to_not be_valid
  end

  it 'Post commentsCounter should be greater than or equal to 0' do
    @new_post.comments_counter = -1
    expect(@new_post).to_not be_valid
  end

  it 'Post likeeCounter should be an integer' do
    @new_post.likes_counter = 'one'
    expect(@new_post).to_not be_valid
  end

  it 'Post likesCounter should be greater than or equal to 0' do
    @new_post.likes_counter = -1
    expect(@new_post).to_not be_valid
  end

  it "Post's recent five comments should be displayed" do
    post = Post.create(title: 'First post', author_id: subject.id, comments_counter: 0, likes_counter: 0)
    first_comment = Comment.create(text: 'First comment', author_id: subject.id, post_id: post.id)
    second_comment = Comment.create(text: 'Second comment', author_id: subject.id, post_id: post.id)
    third_comment = Comment.create(text: 'Third comment', author_id: subject.id, post_id: post.id)
    fourth_comment = Comment.create(text: 'Fourth comment', author_id: subject.id, post_id: post.id)
    fifth_comment = Comment.create(text: 'Fifth comment', author_id: subject.id, post_id: post.id)
    expect(post.recent_five_comments).to eq([first_comment, second_comment, third_comment, fourth_comment,
                                             fifth_comment])
  end

  it "Post's counter should be updated after saving" do
    author = User.create(name: 'Miliyon', posts_counter: 0)
    Post.create(title: 'Post 1', author_id: author.id, comments_counter: 0, likes_counter: 0)
    lastuser = User.last
    expect(lastuser.posts_counter).to eq(1)
  end
end
