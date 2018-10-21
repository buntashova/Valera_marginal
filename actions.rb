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

  # def watch_nature(human)
  #   #
  # end

  # def netflix_n_wine(human)
  #   #
  # end

  # def go_to_bar(human)
  #   #
  # end

  # def drink_with_marginals(human)
  #   #
  # end

  # def sing_in_subway(human)
  #   #
  # end

  # def sleep(human)
  #   #
  # end
end
