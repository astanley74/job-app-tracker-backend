Rails.application.routes.draw do
  

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :job_applications
      end
      post '/login', to: 'sessions#create'
    end
  end
  
end
