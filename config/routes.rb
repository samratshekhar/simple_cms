Rails.application.routes.draw do
  

	# simple route
  get 'demo/index'
  #match "demo/index", :to => "demo#index", :via => :get


  # default route
  #get ':controller(/:action(/:id))'


  # root route
  root 'demo#index'
  match '/', :to => "demo#index", :via => :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
