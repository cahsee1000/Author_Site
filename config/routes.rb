Rails.application.routes.draw do
  get 'book', to: 'books#index', as: 'book'
  get 'event', to: 'events#index', as: 'event'
  get 'blog', to: 'blogs#index', as: 'blog'

  resources :blogs
  resources :events
  resources :books
  resources :contact_forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contact_forms#index'
end
