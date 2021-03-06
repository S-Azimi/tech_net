TechNet::Application.routes.draw do

  get "password_resets/new"
  root 'sessions#new' 
  match '/register' , to: 'members#new' , via: 'get'
  match '/edit_profile' , to: 'members#edit' , via: 'get'
  match '/login' , to: 'sessions#new' , via: 'get'
  match '/logout' , to: 'sessions#destroy' , via: 'delete'

  match '/pass_recov' , to: 'main_controller#pass_recov' , via: 'get'
  match '/main_page' , to: 'main_controller#main_page' , via: 'get'
  match '/prof_search' , to: 'main_controller#prof_search' , via: 'get'
  
  #match '/members_teches' , to: 'members_teches#new' , via: 'get'
  match '/new_members_tech' , to: 'members_teches#new' , via: 'get'
  

  #get "main_controller/register"
  get "members/edit"
  get "main_controller/login"
  get "main_controller/pass_recov"
  get "main_controller/main_page"
  get "main_controller/prof_search"

  resources :members_teches

  resources :assoteches

  resources :teches

  resources :members

  resources :sessions, only: [:new, :create, :destroy]
  resources :password_resets
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
