Rails.application.routes.draw do
  get 'profile/user_page'
  get 'your_posts' => 'blog_posts#your_posts'
  get 'user_posts' => 'blog_posts#user_posts'

  devise_for :users
  resources :comments

  resources :blog_posts

  root "blog_posts#index"
end
