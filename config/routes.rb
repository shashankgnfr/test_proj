Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





  get 'event/index'
 
  resources :events do
    resources :cmts
  end

  root 'events#index'






end
