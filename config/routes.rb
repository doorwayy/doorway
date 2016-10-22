# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   json GET  /           api#root
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'api#root'
  get '/beds/available', to: 'beds#available'
end
