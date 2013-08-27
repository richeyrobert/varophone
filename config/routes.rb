Varophone::Application.routes.draw do


  authenticated :user do
    namespace :admin do
      resources :users
      resources :pbx_users
      resources :pbx_user_groups
      resources :phone_numbers
      resources :devices
      match :dashboard, to: "dashboard#index", as: "dashboard", via:[:get, :post]
      resources :extensions
      resources :extension_lines
      resources :extension_ring_groups
      resources :extension_conference_rooms
      resources :extension_call_queues
      resources :extension_dial_plans
      resources :extension_shared_voicemail_boxes
      resources :extension_virtual_fax_machines
      match :extension_lines_index, to: "extensions#extension_lines", via:[:get, :post, :put]
      match :extension_ring_groups_index, to: "extensions#extension_ring_groups", via:[:get, :post, :get]
      match :extension_conference_rooms_index, to: "extensions#extension_conference_rooms", via:[:get, :post, :get]
      match :extension_call_queues_index, to: "extensions#extension_call_queues", via:[:get, :post, :get]
      match :extension_dial_plans_index, to: "extensions#extension_dial_plans", via:[:get, :post, :get]
      match :extension_shared_voicemail_boxes_index, to: "extensions#extension_shared_voicemail_boxes", via:[:get, :post, :get]
      match :extension_virtual_fax_machines_index, to: "extensions#extension_virtual_fax_machines", via:[:get, :post, :get]
      resources :corporate_directories
      resources :paging_profiles
      resources :device_buttons
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