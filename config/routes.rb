SampleBlog::Application.routes.draw do
  devise_for :admins, path: "admin"

  namespace :admin do
    root 'posts#index'
    resources :posts
  end

  root 'home#index'
end
