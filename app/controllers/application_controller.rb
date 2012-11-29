class ApplicationController < ActionController::Base
  protect_from_forgery
  lock :actions => [
    "proposals#index",
    "proposals#show",
    "proposals#edit",
    "proposals#update",
    "proposals#destroy"
  ]
end
