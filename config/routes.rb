Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Static Content Pages
  Spree::Core::Engine.routes.draw do
    root 'home#landing'

  # Need to redirect the login and Registration Paths
    get 'privacy_policy', to: 'static_pages#privacy_policy'
    get 'about', to: 'static_pages#about'
    get 'coming_soon', to: 'static_pages#coming_soon'
    resources :support_forms, only: [:new, :create]
    resources :contact_forms, only: [:new, :create]
    post 'support', to: 'forms#create_support'
  end
end
