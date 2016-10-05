require "rulers/version"
require "rulers/array"

module Rulers
  # Your code goes here...
  class Application
  		def call(env)
  		klass,act=get_controller_and_action(env)
  		controller=klass.new(env)
  		text=controller.send(act)
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
