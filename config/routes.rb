ZincLily::Application.routes.draw do

  resources :proposals
  root :to => 'static#index'

end
