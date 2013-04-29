Testapp::Application.routes.draw do

  devise_for :planners
  devise_for :customers

  resources :customers
  resources :planners

  resources :tips
  resources :venues
  resources :elements
  resources :users
  root :to => 'static_pages#home'

  get "static_pages/home"


  match '/about', to: 'static_pages#about'
  match '/add', to: 'customers#add'
  match '/remove', to: 'customers#remove'
  match '/add_element', to: 'customers#add_element'
  match '/remove_element', to: 'customers#remove_element'


  match '/refine', to: 'static_pages#refine'
  match '/inspiration', to: 'static_pages#inspiration'
  match '/home', to: 'static_pages#home'
  match '/carlene', to: 'static_pages#carlene'
  match '/loom', to: 'customers#loom'
  match '/signup', to: 'static_pages#signup'
  match '/profile', to: 'planners#profile'

  # To be deleted after redoing the landing page:
  match '/homeplanner', to: 'static_pages#homeplanner'
  match '/venuesboard', to: 'static_pages#venuesboard'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
