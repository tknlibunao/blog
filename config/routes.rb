Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  get 'users/:id/profile', to: 'users#profile', as: :profile

  root 'home#index'

  resources :articles do
    resources :comments
  end
    
end
