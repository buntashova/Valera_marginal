#!/usr/bin/env ruby

require_relative 'valera.rb'

class Controller

	def initialize
		@valera = Valera.new
		# @view = View.new	
		# @action = Action.new

	end

	def game
		exit_game = false
		loop do 
			# user_action = view.get_user_action
			user_action = '8'
			case user_action
			when '1'
				# вызов действия
			when '2'
				# вызов действия
			when '3'
				# вызов действия
			when '4'
				# вызов действия
			when '5'
				# вызов действия
			when '6'
				# вызов действия
			when '7'
				# вызов действия
			when '8' 
				# выход 
				exit_game = true
				puts 'Exit'
			else
				puts 'Unknown action'
			end

			if not @valera.alive
				exit_game = true
			end

			break if exit_game 
		end 
	end

end