Rails.application.routes.draw do
  resources :users
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'book', to: 'books#index', as: 'book'
  get 'event', to: 'events#index', as: 'event'
  get 'blog', to: 'blogs#index', as: 'blog'
  get 'home', to: 'pages#home', as: 'home'

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :blogs
  resources :events
  resources :books
  resources :contact_forms
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
