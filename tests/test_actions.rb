require "test/unit"
require_relative "../valera.rb"
require_relative "../actions.rb"

class ContTest < Test::Unit::TestCase
  def setup
    @act = Actions.new
    @val = Valera.new
  end

  def test_01_go_to_work
    @val.cheerfulness = 10
    @val.mana = 50
    @val.money = 20
    @val.tired = 10

    @act.go_to_work(@val)

    assert_equal 5, @val.cheerfulness
    assert_equal 20, @val.mana
    assert_equal 120, @val.money
    assert_equal 80, @val.tired
  end

  def test_02_watch_nature
    @val.cheerfulness = 8
    @val.mana = 50
    @val.tired = 10

    @act.watch_nature(@val)

    assert_equal 9, @val.cheerfulness
    assert_equal 40, @val.mana
    assert_equal 20, @val.tired
  end

  def test_03_netflix_n_wine
    @val.cheerfulness = 10
    @val.mana = 50
    @val.tired = 10
    @val.health = 90
    @val.money = 70

    @act.netflix_n_wine(@val)

    assert_equal 9, @val.cheerfulness
    assert_equal 80, @val.mana
    assert_equal 20, @val.tired
    assert_equal 85, @val.health
    assert_equal 50, @val.money
  end

  def test_04_go_to_bar
    @val.cheerfulness = 5
    @val.mana = 0
    @val.tired = 10
    @val.health = 90
    @val.money = 120

    @act.go_to_bar(@val)

    assert_equal 6, @val.cheerfulness
    assert_equal 60, @val.mana
    assert_equal 50, @val.tired
    assert_equal 80, @val.health
    assert_equal 20, @val.money
  end

  def test_05_drink_with_marginals
    @val.cheerfulness = 5
    @val.mana = 0
    @val.tired = 10
    @val.health = 90
    @val.money = 900

    @act.drink_with_marginals(@val)

    assert_equal 10, @val.cheerfulness
    assert_equal 90, @val.mana
    assert_equal 90, @val.tired
    assert_equal 10, @val.health
    assert_equal 750, @val.money
  end

  def test_06_sing_in_subway
    @val.cheerfulness = 5
    @val.mana = 0
    @val.tired = 10
    @val.money = 200

    @act.sing_in_subway(@val)

    assert_equal 6, @val.cheerfulness
    assert_equal 10, @val.mana
    assert_equal 30, @val.tired
    assert_equal 210, @val.money
  end

  def test_07_sing_in_subway_drunk
    @val.cheerfulness = 5
    @val.mana = 50
    @val.tired = 10
    @val.money = 200

    @act.sing_in_subway(@val)

    assert_equal 6, @val.cheerfulness
    assert_equal 60, @val.mana
    assert_equal 30, @val.tired
    assert_equal 260, @val.money
  end

  def test_08_sleep_sober
    @val.health = 5
    @val.mana = 20
    @val.tired = 90

    @act.sleep(@val)

    assert_equal 95, @val.health
    assert_equal 0, @val.mana
    assert_equal 20, @val.tired
  end

  def test_09_sleep_drunk
    @val.mana = 60
    @val.tired = 90

    @act.sleep(@val)

    assert_equal 10, @val.mana
    assert_equal 20, @val.tired
  end

  def test_10_sleep_very_drunk
    @val.cheerfulness = 5
    @val.mana = 80
    @val.tired = 90

    @act.sleep(@val)

    assert_equal 2, @val.cheerfulness
    assert_equal 30, @val.mana
    assert_equal 20, @val.tired
  end
end
