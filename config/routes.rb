Rails.application.routes.draw do
  
  # scope :api do
  #   scope :v1 do  

      devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

      ActiveAdmin.routes(self)
      
      scope :module => 'crammer' do
        resources :classes
      end

      
    # end
  # end
  
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root to: 'application#welcome'
  

  

  
      
    

end
