Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :job_applications
    end
  end
  
end
