#!/usr/bin/env ruby

# require "singleton"

class Valera
	
	def initialize
		@health = 100
		@mana = 0
		@cheerfulness = 0
		@tired = 0
		@money = 0
	end
	attr_accessor :health
	attr_accessor :mana 
	attr_accessor :cheerfulness 
	attr_accessor :tired 
	attr_accessor :money
	#include Singleton
	# def health
	# 	@health
	# end
	# def health=(val)
	# 	@health = val
	# end
	
	# def mana
	# 	@mana
	# end
	# def mana=(val)
	# 	@mana = val
	# end

	# def cheerfulness
	# 	@cheerfulness
	# end
	# def cheerfulness=(val)
	# 	@cheerfulness = val
	# end

	# def tired
	# 	@tired
	# end
	# def tired=(val)
	# 	@tired = val
	# end

	# def money
	# 	@money
	# end
	# def money=(val)
	# 	@money = val
	# end
	

end

a = Valera.new
puts a.tired
a.tired=(10)
puts a.tired

