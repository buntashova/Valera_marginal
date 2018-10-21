require "../valera.rb"
require "../actions.rb"
require "test/unit"

class ContTest < Test::Unit::TestCase
  def setup
    val = Valera.new
    val.health = 100
    val.mana = 0
    val.cheerfulness = 0
    val.tired = 0
    val.money = 0
  end

  def test_01_go_to_work
    #
  end

  def test_02_watch_nature
    #
  end

  def test_03_netflix_n_wine
    #
  end

  def test_04_go_to_bar
    #
  end

  def test_05_drink_with_marginals
    #
  end

  def test_06_sing_in_subway
    #
  end

  def test_07_sleep
    #
  end
end
