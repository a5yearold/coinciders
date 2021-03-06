# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#               home_index GET    /home/index(.:format)          home#index
#                chatrooms GET    /chatrooms(.:format)           chatrooms#index
#                          POST   /chatrooms(.:format)           chatrooms#create
#             new_chatroom GET    /chatrooms/new(.:format)       chatrooms#new
#            edit_chatroom GET    /chatrooms/:id/edit(.:format)  chatrooms#edit
#                 chatroom GET    /chatrooms/:id(.:format)       chatrooms#show
#                          PATCH  /chatrooms/:id(.:format)       chatrooms#update
#                          PUT    /chatrooms/:id(.:format)       chatrooms#update
#                          DELETE /chatrooms/:id(.:format)       chatrooms#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
#

Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :chatrooms do
    resource :chatroom_users
    resource :messages
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
