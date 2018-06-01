Rails.application.routes.draw do
  root 'application#landing'
  get '/profiles', to: 'application#index',  as: 'profiles'
  get '/account-type', to: 'application#account_type'
  get '/about', to: 'application#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :searches, except: [:index, :update, :destroy]
  resources :people, :cats, except: [:index]
  #show? 'Profiles/:id/cat'
  #show? 'Profiles/:id/adopter'
  resources :admins, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
