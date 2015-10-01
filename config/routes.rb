Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :panels
    resources :panel_groups
  end
end
