Rails.application.routes.draw do
 # get 'actors/app/controllers/api/v1/'
   
  namespace :api do
    namespace :v1 do
      resources :movies 
      resources :actors

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	