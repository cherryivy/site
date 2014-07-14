CherryIvy::Application.routes.draw do

  resources :charities,       only: [:new, :create, :show]
  resources :philanthropists, except: :destroy
  resources :events,          except: :destroy
  resource  :session,         only: [:new, :create, :destroy]

  root to: 'events#index'

  match '/register', to: 'philanthropists#new', via: 'get', as: :signup
  match '/login',    to: 'sessions#new',        via: 'get', as: :login
  match '/logout',   to: 'sessions#destroy',    via: 'get', as: :logout

end
