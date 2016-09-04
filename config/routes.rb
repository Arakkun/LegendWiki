Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }
  get 'artists/index'
  root 'artists#index'
  resources :artists do 
    resources :comments
  end
  
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
