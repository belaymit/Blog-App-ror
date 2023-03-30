Rails.application.routes.draw do
  resources :blog_users
  root 'blog_user#index'
end
