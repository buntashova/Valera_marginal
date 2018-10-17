#!/usr/bin/env ruby

class Valera
	
	attr_accessor :health
	attr_accessor :mana 
	attr_accessor :cheerfulness 
	attr_accessor :tired 
	attr_accessor :money
	
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
	# 	puts @tired
	# end

	# def money
	# 	@money
	# end
	# def money=(val)
	# 	@money = val
	# end
	# include Singleton

end

a = Valera.new
a.tired = "5"
puts a.tired