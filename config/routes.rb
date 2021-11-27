Rails.application.routes.draw do
  resources :studies
  resources :dashboards
  resources :notes
  resources :courses do
    resources :assignments
  end
  
  namespace :course do
    resources :assignments
  end
  
  devise_for :users
    root to: "dashboards#index"
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
