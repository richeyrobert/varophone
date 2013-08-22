Varophone::Application.routes.draw do


  authenticated :user do
    namespace :admin do
      resources :users
      resources :pbx_users
      resources :pbx_user_groups
      resources :phone_numbers
      resources :devices
      match :dashboard, to: "dashboard#index", as: "dashboard", via:[:get, :post]
      resources :extension_lines
      resources :extension_ring_groups
      resources :extension_conference_rooms
      resources :extension_call_queues
      resources :extension_dial_plans
      resources :extension_shared_voicemail_boxes
      resources :extension_virtual_fax_machines
      resources :extensions
      resources :corporate_directories
      resources :paging_profiles
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