CursoRails::Application.routes.draw do
  

  get "errors/rutas"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
     match 'servicios/:id' => 'home#servicios', :via => [:post,:get], :as =>"servicios"
     match 'quienes' => 'home#quienes_somos', :as =>'quien'
  # Keep in mind you can assign values other than :controller and :action
 match ':controller(/:action(/:id))'
  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # match '/home/quienes_somos' , :constraints => UsuarioLogueado
  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  match '*a', :to=>'errors#rutas'
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
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  
end
