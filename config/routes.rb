UpgradeToRails3::Application.routes.draw do
  resources :lists do
    resources :items
  end

  resources :items do
    member do
      put :toggle
    end
  end

  root :to => 'lists#index'
end
