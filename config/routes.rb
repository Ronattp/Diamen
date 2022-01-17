Rails.application.routes.draw do
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts
  root to: 'pages#home'
  devise_for :users

  get 'home/homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root 'home#homepage'
end
