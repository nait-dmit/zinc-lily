ZincLily::Application.routes.draw do

  get "industry-series" => "talks#index"

  resources :talks
  resources :proposals

  get "changelog" => "static#changelog", as: "changelog"

  get "login" => "lock#login"
  get "unlock" => "lock#login"

  root :to => 'static#index'

end
