Rails.application.routes.draw do
  # API root welcome message
  root to: proc { [200, {}, ["Welcome to the UTech Dynamics API!"]] }

  resources :contact_submissions
  
  get "up" => "rails/health#show", as: :rails_health_check
end
