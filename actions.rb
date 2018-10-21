class Actions
  def go_to_work(human)
    human.cheerfulness -= 5
    human.cheerfulness = -10 if human.cheerfulness < -10
    human.mana -= 30
    human.mana = 0 if human.mana < 0
    human.money += 100
    human.tired += 70
    human.tired = 100 if human.tired > 100
  end

  def watch_nature(human)
    human.cheerfulness += 1
    human.cheerfulness = 10 if human.cheerfulness > 10
    human.mana -= 10
    human.mana = 0 if human.mana < 0
    human.tired += 10
    human.tired = 100 if human.tired > 100
  end

  def netflix_n_wine(human)
    human.cheerfulness -= 1
    human.cheerfulness = -10 if human.cheerfulness < -10
    human.mana += 30
    human.mana = 100 if human.mana > 100
    human.tired += 10
    human.tired = 100 if human.tired > 100
    human.health -= 5
    human.alive = false if human.health < 0
    human.money -= 20
  end

  def go_to_bar(human)
    human.cheerfulness += 1
    human.cheerfulness = 10 if human.cheerfulness > 10
    human.mana += 60
    human.mana = 100 if human.mana > 100
    human.tired += 40
    human.tired = 100 if human.tired > 100
    human.health -= 10
    human.alive = false if human.health < 0
    human.money -= 100
  end

  def drink_with_marginals(human)
    human.cheerfulness += 5
    human.cheerfulness = 10 if human.cheerfulness > 10
    human.mana += 90
    human.mana = 100 if human.mana > 100
    human.tired += 80
    human.tired = 100 if human.tired > 100
    human.health -= 80
    human.alive = false if human.health < 0
    human.money -= 150
  end

  def sing_in_subway(human)
    human.cheerfulness += 1
    human.cheerfulness = 10 if human.cheerfulness > 10
    human.mana += 10
    human.mana = 100 if human.mana > 100
    human.money += 10 if human.mana < 40
    human.money += 60 if human.mana > 40 && human.mana < 70
    human.tired += 20
    human.tired = 100 if human.tired > 100
  end

  def sleep(human)
    human.health += 90 if human.mana < 30
    human.health = 100 if human.health > 100
    human.cheerfulness -= 3 if human.mana > 70
    human.cheerfulness = -10 if human.cheerfulness < -10
    human.mana -= 50
    human.mana = 0 if human.mana < 0
    human.tired -= 70
    human.tired = 0 if human.tired < 0
  end
end
