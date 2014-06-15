CherryIvy::Application.routes.draw do
  resources :charities,       except: :destroy
  resources :philanthropists, except: :destroy
  resources :events
  resource  :session

  root to: 'events#index'
  match '/signup', to: 'philanthropists#new', via: 'get', as: 'signup'
  match '/login',  to: 'sessions#new',        via: 'get', as: 'login'
  match '/logout', to: 'sessions#destroy',    via: 'get', as: 'logout'
end
