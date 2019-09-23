Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/' => 'home#top'
  get 'about' => 'home#about'
  
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get 'users/index' => 'users/index'
  get 'users/:id' => 'users#show'
  get 'signup' => 'users#new'
  get 'users/:id/edit' => 'users#edit'
  get 'login' => 'users#login_form'
  get 'users/:id/likes' => 'users#likes'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  post 'users/create' => 'users#create'
  post 'users/:id/update' => 'users#update'

  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
