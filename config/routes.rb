Rails.application.routes.draw do
  resources :contact_forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contact_forms#index'
end
