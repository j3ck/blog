SampleBlog::Application.routes.draw do
  root 'home#index'

  devise_for :admins, path: '/admin', controllers: { :sessions => "admin/sessions" }

  namespace :admin do
    root 'posts#index'
    resources :posts, except: :index
  end

end
