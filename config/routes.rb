Rails.application.routes.draw do
  get 'artists/index'
  resources :artists
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'artists#index'
end
