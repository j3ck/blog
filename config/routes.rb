SampleBlog::Application.routes.draw do
  devise_for :admins, path: "admin"

  namespace :admin do
    root 'posts#index'
    resources :posts, except: :index
  end

  root 'home#index'
end
