Rails.application.routes.draw do
  default_url_options :host => "0.0.0.0"
  devise_for :users
  root to: 'visitors#index'
  resources :users
  get 'give_kudos/:id', to: 'users#give_kudos', as: "give_kudos"
end
