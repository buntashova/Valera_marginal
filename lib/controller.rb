#!/usr/bin/env ruby

require_relative 'valera.rb'
require_relative 'actions.rb'
require_relative 'view.rb'

class Controller

    def initialize
        @valera = Valera.new
        @view = View.new    
        @action = Actions.new
    end

    def game
        exit_game = false
        @view.welcome
        loop do 
            @view.stats(@valera)
            user_action = @view.get_user_action
            
            case user_action
            when '1'
                if @valera.mana < 50 and @valera.tired < 10
                    @action.go_to_work(@valera)
                else
                    @view.print('Пьяный уставший Валера не может пойти на работу')
                end
            when '2'
                @action.watch_nature(@valera)
            when '3'
                @action.netflix_n_wine(@valera)
            when '4'
                @action.go_to_bar(@valera)
            when '5'
                @action.drink_with_marginals(@valera)
            when '6'
                @action.sing_in_subway(@valera)
            when '7'
                @action.sleep(@valera)
            when '8' 
                exit_game = true
            else
                puts 'Unknown action'
            end

            if not @valera.alive
                exit_game = true
                puts 'Валерий помер =('
            end

            break if exit_game 
        end 
    end

end