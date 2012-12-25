ZincLily::Application.routes.draw do

  scope "industry-series" do
    get "/" => "talks#index", as: "talks"
    resources :talks
  end

  resources :proposals

  get "changelog" => "static#changelog", as: "changelog"

  get "login" => "lock#login"
  get "unlock" => "lock#login"

  root :to => 'static#index'

end
