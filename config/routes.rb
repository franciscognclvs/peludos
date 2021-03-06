Rails.application.routes.draw do
  devise_for :users
  # controllers: {
  #       sessions: 'users/sessions'
  #     }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :adoptions, only: :create
  end
  resources :adoptions, only: [:show, :index]
  resources :pages

  get '/search', to: 'pages#search', as: 'animal_search'
  
end
