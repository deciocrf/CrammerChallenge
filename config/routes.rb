Rails.application.routes.draw do
  
  

  namespace :crammer do
    get 'placements/new'
  end

  namespace :crammer do
    get 'placements/create'
  end

  scope :api do
    scope :v1 do  

      devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

      ActiveAdmin.routes(self)
      
      scope :module => 'crammer' do
        resources :classes
        resources :placements, only: [:new, :create]
      end

      # namespace :crammer do
      #   get 'placements_controller/:new'
      # end
    
      # namespace :crammer do
      #   get 'placements_controller/:create'
      # end

      
    end
  end
  
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root to: 'application#welcome'
  

  

  
      
    

end
