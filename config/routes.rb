# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get 'quotes', to: 'quotes#index'
  # Where we suppose to only have '/quotes' in the url or is the param query string okay?
  # If not, how do I remove the query string from url
end
