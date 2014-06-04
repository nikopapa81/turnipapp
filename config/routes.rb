Rails.application.routes.draw do

  devise_for :users
  get('/', { :controller => 'activities', :action => 'home'})
  get('/about', { :controller => 'activities', :action => 'about'})
  get('/reports', { :controller => 'activities', :action => 'reports'})
  get('/recipes', { :controller => 'activities', :action => 'recipes'})

  # Routes for the U_of_m resource:
  # CREATE
  get('/u_of_ms/new', { :controller => 'u_of_ms', :action => 'new' })
  get('/create_u_of_m', { :controller => 'u_of_ms', :action => 'create' })

  # READ
  get('/u_of_ms', { :controller => 'u_of_ms', :action => 'index' })
  get('/u_of_ms/:id', { :controller => 'u_of_ms', :action => 'show' })

  # UPDATE
  get('/u_of_ms/:id/edit', { :controller => 'u_of_ms', :action => 'edit' })
  get('/update_u_of_m/:id', { :controller => 'u_of_ms', :action => 'update' })

  # DELETE
  get('/delete_u_of_m/:id', { :controller => 'u_of_ms', :action => 'destroy' })
  #------------------------------

  # Routes for the Consumption resource:
  # CREATE
  get('/consumptions/new', { :controller => 'consumptions', :action => 'new' })
  get('/create_consumption', { :controller => 'consumptions', :action => 'create' })

  # READ
  get('/consumptions', { :controller => 'consumptions', :action => 'index' })
  get('/consumptions/:id', { :controller => 'consumptions', :action => 'show' })

  # UPDATE
  get('/consumptions/:id/edit', { :controller => 'consumptions', :action => 'edit' })
  get('/update_consumption/:id', { :controller => 'consumptions', :action => 'update' })

  # DELETE
  get('/delete_consumption/:id', { :controller => 'consumptions', :action => 'destroy' })
  #------------------------------

  # Routes for the Purchase resource:
  # CREATE
  get('/purchases/new', { :controller => 'purchases', :action => 'new' })
  get('/create_purchase', { :controller => 'purchases', :action => 'create' })

  # READ
  get('/purchases', { :controller => 'purchases', :action => 'index' })
  get('/purchases/:id', { :controller => 'purchases', :action => 'show' })

  # UPDATE
  get('/purchases/:id/edit', { :controller => 'purchases', :action => 'edit' })
  get('/update_purchase/:id', { :controller => 'purchases', :action => 'update' })

  # DELETE
  get('/delete_purchase/:id', { :controller => 'purchases', :action => 'destroy' })
  #------------------------------

  # Routes for the Activity resource:
  # CREATE
  get('/activities/new', { :controller => 'activities', :action => 'new' })
  get('/create_activity', { :controller => 'activities', :action => 'create' })

  # READ
  get('/activities', { :controller => 'activities', :action => 'index' })
  get('/activities/:id', { :controller => 'activities', :action => 'show' })

  # UPDATE
  get('/activities/:id/edit', { :controller => 'activities', :action => 'edit' })
  get('/update_activity/:id', { :controller => 'activities', :action => 'update' })

  # DELETE
  get('/delete_activity/:id', { :controller => 'activities', :action => 'destroy' })
  #------------------------------

  # Routes for the Food_item resource:
  # CREATE
  get('/food_items/new', { :controller => 'food_items', :action => 'new' })
  get('/create_food_item', { :controller => 'food_items', :action => 'create' })

  # READ
  get('/food_items', { :controller => 'food_items', :action => 'index' })
  get('/food_items/:id', { :controller => 'food_items', :action => 'show' })

  # UPDATE
  get('/food_items/:id/edit', { :controller => 'food_items', :action => 'edit' })
  get('/update_food_item/:id', { :controller => 'food_items', :action => 'update' })

  # DELETE
  get('/delete_food_item/:id', { :controller => 'food_items', :action => 'destroy' })
  #------------------------------

  # Routes for the Food_category resource:
  # CREATE
  get('/food_categories/new', { :controller => 'food_categories', :action => 'new' })
  get('/create_food_category', { :controller => 'food_categories', :action => 'create' })

  # READ
  get('/food_categories', { :controller => 'food_categories', :action => 'index' })
  get('/food_categories/:id', { :controller => 'food_categories', :action => 'show' })

  # UPDATE
  get('/food_categories/:id/edit', { :controller => 'food_categories', :action => 'edit' })
  get('/update_food_category/:id', { :controller => 'food_categories', :action => 'update' })

  # DELETE
  get('/delete_food_category/:id', { :controller => 'food_categories', :action => 'destroy' })
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
