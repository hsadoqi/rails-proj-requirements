Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reviews
  
  resources :users do 
    resources :reviews
  end 

end
