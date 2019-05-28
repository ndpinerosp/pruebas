# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#              city_clients GET    /cities/:city_id/clients(.:format)                                                       clients#index
#                           POST   /cities/:city_id/clients(.:format)                                                       clients#create
#               city_client GET    /cities/:city_id/clients/:id(.:format)                                                   clients#show
#                           PATCH  /cities/:city_id/clients/:id(.:format)                                                   clients#update
#                           PUT    /cities/:city_id/clients/:id(.:format)                                                   clients#update
#                           DELETE /cities/:city_id/clients/:id(.:format)                                                   clients#destroy
#        city_cook_products GET    /cities/:city_id/cooks/:cook_id/products(.:format)                                       products#index
#                           POST   /cities/:city_id/cooks/:cook_id/products(.:format)                                       products#create
#         city_cook_product GET    /cities/:city_id/cooks/:cook_id/products/:id(.:format)                                   products#show
#                           PATCH  /cities/:city_id/cooks/:cook_id/products/:id(.:format)                                   products#update
#                           PUT    /cities/:city_id/cooks/:cook_id/products/:id(.:format)                                   products#update
#                           DELETE /cities/:city_id/cooks/:cook_id/products/:id(.:format)                                   products#destroy
#                city_cooks GET    /cities/:city_id/cooks(.:format)                                                         cooks#index
#                           POST   /cities/:city_id/cooks(.:format)                                                         cooks#create
#                 city_cook GET    /cities/:city_id/cooks/:id(.:format)                                                     cooks#show
#                           PATCH  /cities/:city_id/cooks/:id(.:format)                                                     cooks#update
#                           PUT    /cities/:city_id/cooks/:id(.:format)                                                     cooks#update
#                           DELETE /cities/:city_id/cooks/:id(.:format)                                                     cooks#destroy
#                    cities GET    /cities(.:format)                                                                        cities#index
#                           POST   /cities(.:format)                                                                        cities#create
#                      city GET    /cities/:id(.:format)                                                                    cities#show
#                           PATCH  /cities/:id(.:format)                                                                    cities#update
#                           PUT    /cities/:id(.:format)                                                                    cities#update
#                           DELETE /cities/:id(.:format)                                                                    cities#destroy
#                   drivers GET    /drivers(.:format)                                                                       drivers#index
#                           POST   /drivers(.:format)                                                                       drivers#create
#                    driver GET    /drivers/:id(.:format)                                                                   drivers#show
#                           PATCH  /drivers/:id(.:format)                                                                   drivers#update
#                           PUT    /drivers/:id(.:format)                                                                   drivers#update
#                           DELETE /drivers/:id(.:format)                                                                   drivers#destroy
#                   reviews POST   /reviews(.:format)                                                                       reviews#create
#                    orders POST   /orders(.:format)                                                                        orders#create
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :cities do
    resources :clients
    resources :cooks do
     resources :products
    end
  end
  resources :drivers
  resources :reviews, only: [:create]
  resources :orders, only: [:create]
end
