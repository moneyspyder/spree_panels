Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :panels
  end
end
