class View
  def welcome
    puts "Приветствуем маргинальных личностей\n"
  end

  def get_user_action
    puts "Выберите действие:"
    puts "1. Сходить на работу"
    puts "2. Созерцать природу"
    puts "3. Остаться дома и выпить винца"
    puts "4. Сгонять в бар"
    puts "5. Выпить с маргинальными личностями"
    puts "6. Исполнить арию в метро"
    puts "7. Спать"
    puts "8. Выход из игры"
    gets.chomp
  end

  def stats(valera)
    puts "\nСтатус Валеры:\n"
    puts "Здоровье = #{valera.health}\n"
    puts "Алкоголь в крови = #{valera.mana}\n"
    puts "Жизнерадостность = #{valera.cheerfulness}\n"
    puts "Усталость = #{valera.tired}\n"
    puts "Деньги = #{valera.money}\n\n"
  end

  def print(msg)
    puts "#{msg}\n"
  end
end
