Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'hello/index'
  namespace :api, defaults: { format: 'json' } do
    get 'greeting', to: 'greetings#index'
  end

  root 'hello#index'

  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
end
