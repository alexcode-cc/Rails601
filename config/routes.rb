Rails.application.routes.draw do
  resources :posts
  resources :boards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'about', :to => 'pages#about'
  get 'pages/about'
  root :to => 'pages#about'
end

