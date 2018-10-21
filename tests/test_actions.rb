require "../valera.rb"
require "../actions.rb"
require "test/unit"

class ContTest < Test::Unit::TestCase
  def setup
    @act = Actions.new
    @val = Valera.new
  end

  def test_01_go_to_work
    @val.health = 100
    @val.mana = 50
    @val.cheerfulness = 10
    @val.tired = 10
    @val.money = 20

    @act.go_to_work(@val)

    assert_equal 100, @val.health
    assert_equal 20, @val.mana
    assert_equal 5, @val.cheerfulness
    assert_equal 80, @val.tired
    assert_equal 120, @val.money
  end

  # def test_02_watch_nature
  #   act.watch_nature(val)
  # end

  # def test_03_netflix_n_wine
  #   act.netflix_n_wine(val)
  # end

  # def test_04_go_to_bar
  #   act.go_to_bar(val)
  # end

  # def test_05_drink_with_marginals
  #   act.drink_with_marginals(val)
  # end

  # def test_06_sing_in_subway
  #   act.sing_in_subway(val)
  # end

  # def test_07_sleep
  #   act.sleep(val)
  # end
end
