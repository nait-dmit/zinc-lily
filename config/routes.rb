ZincLily::Application.routes.draw do

  scope :constraints => { :subdomain => "industryseries" } do
    get "/" => "talks#index", as: "talks"
    post "/" => "talks#create"
    resources :talks
  end

  resources :proposals

  get "changelog" => "static#changelog", as: "changelog"

  get "login" => "lock#login"
  get "unlock" => "lock#login"

  root :to => 'static#index'

end
