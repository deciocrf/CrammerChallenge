Rails.application.routes.draw do
  
  scope :api do
    scope :v1 do  
      devise_for :users
      ActiveAdmin.routes(self)
    end
  end
  
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root to: 'application#welcome'

  
      
    

end
