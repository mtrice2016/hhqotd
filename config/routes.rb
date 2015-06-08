Rails.application.routes.draw do


  #root 'welcome#index'
  get 'welcome/index'

  # Routes for the Song resource:
  # CREATE
  get "/songs/new", :controller => "songs", :action => "new"
  post "/create_song", :controller => "songs", :action => "create"

  # READ
  get "/songs", :controller => "songs", :action => "index"
  get "/songs/:id", :controller => "songs", :action => "show"

  # UPDATE
  get "/songs/:id/edit", :controller => "songs", :action => "edit"
  post "/update_song/:id", :controller => "songs", :action => "update"

  # DELETE
  get "/delete_song/:id", :controller => "songs", :action => "destroy"
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get "/artists/new", :controller => "artists", :action => "new"
  post "/create_artist", :controller => "artists", :action => "create"

  # READ
  get "/artists", :controller => "artists", :action => "index"
  get "/artists/:id", :controller => "artists", :action => "show"

  # UPDATE
  get "/artists/:id/edit", :controller => "artists", :action => "edit"
  post "/update_artist/:id", :controller => "artists", :action => "update"

  # DELETE
  get "/delete_artist/:id", :controller => "artists", :action => "destroy"
  #------------------------------

  # Routes for the Quote resource:
  # CREATE
  get "/quotes/new", :controller => "quotes", :action => "new"
  post "/create_quote", :controller => "quotes", :action => "create"

  # READ
  get "/quotes", :controller => "quotes", :action => "index"
  get "/quotes/:id", :controller => "quotes", :action => "show"

  # UPDATE
  get "/quotes/:id/edit", :controller => "quotes", :action => "edit"
  post "/update_quote/:id", :controller => "quotes", :action => "update"

  # DELETE
  get "/delete_quote/:id", :controller => "quotes", :action => "destroy"

  #RANDOM
  get "/quotes/qotd", :controller => "quotes", :action => "qotd"
  root 'quotes#qotd'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Album resource:
  # CREATE
  get "/albums/new", :controller => "albums", :action => "new"
  post "/create_album", :controller => "albums", :action => "create"

  # READ
  get "/albums", :controller => "albums", :action => "index"
  get "/albums/:id", :controller => "albums", :action => "show"

  # UPDATE
  get "/albums/:id/edit", :controller => "albums", :action => "edit"
  post "/update_album/:id", :controller => "albums", :action => "update"

  # DELETE
  get "/delete_album/:id", :controller => "albums", :action => "destroy"
  #------------------------------



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
