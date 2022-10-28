Rails.application.routes.draw do
  root 'welcome#index'
  get '/quotes', to: 'quotes#search'
end
