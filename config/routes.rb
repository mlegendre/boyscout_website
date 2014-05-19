BoyscoutsWebsite::Application.routes.draw do
  get "scout_page/index"
  get "scout_page/show"
  get "scout_page/update"
  #get 'signup/signup_index'
  root to: 'static_pages#index'
  get '/forms', to: 'static_pages#forms'
  get '/badges', to: 'static_pages#badges'
  get '/new_event', to: 'new_event#new_event'
  get "scout_page/index"
  get "scout_page/show"
  get "scout_page/update"

  Rails.application.routes.draw do
    devise_for :users
    resources :new_event
  end

end
