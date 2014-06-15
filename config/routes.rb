CherryIvy::Application.routes.draw do
  resources :charities,      except: :destroy
  resources :philantropists, except: :destroy
  resources :events

  root to: 'events/index'
  match '/signup', to: 'philanthropists#new', via: 'get'
  match '/login', to:  'sessions#new', via: 'get'
  match '/logout', to: 'sessions#destroy', via: 'get'
end
