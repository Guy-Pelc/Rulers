require "rulers/version"
require "rulers/routing"

module Rulers
  # Your code goes here...
  class Application
  		def call(env)
        if env['PATH_INFO']=='/favicon.ico'
          return [404,{'content-Type'=>'text/html'},[]]
        end

        if env['PATH_INFO']=='/'
          env['PATH_INFO']='/quotes/a_quote'
        end

        

  		klass,act=get_controller_and_action(env)
  		controller=klass.new(env)
      begin 
  		  text=controller.send(act)
      rescue Exception => ex
        [404,{'content-Type'=>'text/html'},[ex.message]]
      end 
  		[200,{'content-Type'=>'text/html'},
  			[text]]
  		end
  end
  class Controller
  		def initialize(env)
  		@env=env
  		end
  		def env
  		@env
  		end
  	end
end
