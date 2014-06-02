CherryIvy::Application.routes.draw do
  get "philanthropists/new"
  get "philanthropists/create"
  get "philanthropists/edit"
  get "philanthropists/update"
  get "philanthropists/view"
  root "calendars#index"
  get "reports/show"
  get "events/index"
  get "events/create"
  get "events/show"
  get "events/edit"
  get "events/deactivate"
  get "charities/index"
  get "charities/create"
  get "charities/edit"
  get "charities/show"
  get "charities/deactivate"
  get "calendars/index"
end
