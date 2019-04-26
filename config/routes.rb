Rails.application.routes.draw do
  resources :users
  resources :blogs
  resources :events
  resources :books
  resources :contact_forms
  resources :pages do
    get 'header', to: 'pages#header'
    get 'footer', to: 'pages#footer'
  end


  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
