class DemoController < ApplicationController

	layout false
  
  def index
  	@array = [1,2,3,4,5]
  end

  def hello

  	render('hello')
  	#render('demo/hello')
  	#render(:match => "demo/hello")
  	
  end

  def other_hello

  	#redirect_to(:action => 'hello')
  	redirect_to(:controller => 'demo', :action => 'hello')
  	#  redirect_to('http://google.com')
  	
  end


end
