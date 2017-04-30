Rails.application.routes.draw do
  

	# simple route

  # match "demo/index", :to => "demo#index", :via => :get
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'

  # default route
  # get ':controller(/:action(/:id))'


  # root route
  root 'demo#index'
  # match '/', :to => "demo#index", :via => :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
