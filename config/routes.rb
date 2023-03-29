Rails.application.routes.draw do
  root 'blog_user#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blog_user", to: "blog_user#index"
end
