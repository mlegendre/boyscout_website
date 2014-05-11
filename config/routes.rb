BoyscoutsWebsite::Application.routes.draw do
  get 'signup/signup_index'
  root 'static_pages#index'
  get '/forms', to: 'static_pages#forms'
  get '/badges', to: 'static_pages#badges'
  get '/new_event', to: 'new_event#new_event'


  Rails.application.routes.draw do
    resources :new_event
  end

end
