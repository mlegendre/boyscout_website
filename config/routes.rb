BoyscoutsWebsite::Application.routes.draw do
  root "static_pages#index"
  get '/forms', to: 'static_pages#forms'
end
