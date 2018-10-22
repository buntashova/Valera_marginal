#!/usr/bin/env ruby

class Valera
    
  def initialize
    @health = 100
    @mana = 0
    @cheerfulness = 0
    @tired = 0
    @money = 0
    @alive = true
  end

  attr_accessor :health
  attr_accessor :mana 
  attr_accessor :cheerfulness 
  attr_accessor :tired 
  attr_accessor :money
  attr_accessor :alive

end
