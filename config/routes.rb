ActionController::Routing::Routes.draw do |map|
  map.resources :lists do |list|
    list.resources :items
  end
  
  map.resources :items, :member => {:toggle => :put}
  
  map.root :controller => 'lists', :action => 'index'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
