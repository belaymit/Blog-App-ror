require 'rails_helper'
RSpec.describe 'User index page', type: :feature do
  describe 'User index view' do
    before(:each) do
      @user = User.create(name: 'Belay', photo: 'https://avatars.githubusercontent.com/u/27350247?v=4',
                          bio: 'I am engineer', posts_counter: 2)
        visit users_path
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
      click_link(@user.name)
      expect(page).to have_current_path(user_post_path(@user.id))
    end
  end
end
