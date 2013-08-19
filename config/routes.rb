Varophone::Application.routes.draw do

  resources :corporate_directories


  resources :paging_profiles


  authenticated :user do
    namespace :admin do
      resources :users
      resources :pbx_users
      resources :pbx_user_groups
      resources :phone_numbers
      resources :devices
      match :dashboard, to: "dashboard#index", as: "dashboard", via:[:get, :post]
    end

    namespace :super_admin do
      resources :pbxes
      resources :pbx_users
      resources :pbx_user_groups
      resources :phone_numbers
      resources :users
      resources :devices
      match :dashboard, to: "dashboard#index", as: "dashboard", via:[:get]
    end

    root :to => 'home#dashboard'
  end

  root :to => "home#index"
  devise_for :users
  resources :users
  # un comment the following line after development
  #match "*path" => 'error#handle404'
end