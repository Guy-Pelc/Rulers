class QuotesController<Rulers::Controller
	def exception
		raise "it's a bad one!"
	end
	
	def a_quote
		"There is nothing either good or bad "+
		"but thinking makes it so." +
		"\n<pre>\n#{env}\n</pre>"
	end
end