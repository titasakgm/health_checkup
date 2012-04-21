Health::Application.routes.draw do

  root :to => "staffs#index"

  resources :staffs
  resources :prefix2s
  resources :prefix1s
  resources :positions
  resources :jobs
  resources :sections
  
  # Added by Dr.Titasak
  resources :devlogs
  resources :users
  resources :sessions

  get "signup", :to => 'users#new', :as => "signup"
  get "login", :to => 'sessions#new', :as => "login"
  get "logout", :to => 'sessions#destroy', :as => "logout"

  match "staff_gen" => "staffs#staff_gen", :as => :staff_gen

end
