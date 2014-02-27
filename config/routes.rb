BoyscoutsWebsite::Application.routes.draw do
  get "signup/signup_index"
  root "static_pages#index"
  get '/forms', to: 'static_pages#forms'
  get '/badges', to: 'static_pages#badges'
end
