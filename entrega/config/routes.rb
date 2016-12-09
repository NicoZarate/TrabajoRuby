Rails.application.routes.draw do
  get 'lists/index'
  resources :lists do
  	resources :temporal_tasks , :simple_tasks , :long_tasks
  end	
  root 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
