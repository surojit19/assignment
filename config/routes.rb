Rails.application.routes.draw do
  root :to=> "application#index"
  resources :secret_code
  post  'secret_code/generate', to: 'secret_code#generate'
  devise_for :users, :controllers => { :registrations => "users" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
