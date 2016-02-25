PxlAdmin::Engine.routes.draw do
  get 'home/index'

  #devise_for :users, class_name: "PxlAdmin::User"
  devise_for :users, class_name: "PxlAdmin::User", controllers: {
    sessions: 'users/sessions'
  }

  root to: "home#index"
  
  namespace :admin do
    resources :users
  end 
end
