Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'routes', to: 'routes#index'
  post 'routes/create', to: 'routes#create'
  patch 'routes/:route_id/update', to: 'routes#update'
  get 'routes/:route_id/departs', to: 'routes#departs'
  get 'routes/:route_id/deliveries', to: 'routes#deliveries'

  get 'departs', to: 'deliveries#index'
  get 'departs/:id', to: 'deliveries#show_depart'
  post 'departs/create', to: 'deliveries#create_depart'
  delete 'departs/:id/destroy', to: 'deliveries#delete_depart'
  get 'deliveries', to: 'deliveries#deliveries'
  get 'deliveries/:id', to: 'deliveries#show_delivery'
  post 'deliveries/create', to: 'deliveries#create_delivery'
  delete 'deliveries/:id/destroy', to: 'deliveries#delete_delivery'

end
