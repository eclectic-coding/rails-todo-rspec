Rails.application.routes.draw do

  # get 'todos/index'
  root to: 'todos#index'

  resources :todos

  resource :session, only: %i[new create]

end
