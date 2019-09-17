Rails.application.routes.draw do
  get 'users/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  get '/' => 'home#top'
  get 'about' => 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
