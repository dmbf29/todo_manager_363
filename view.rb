class View
  # no initialize -> view is a dumb class

  def display_tasks(tasks) # array of INSTANCES
    tasks.each_with_index do |task, index|
      x_mark = task.done? ? "X" : " "
      puts "#{index + 1}.) [#{x_mark}] #{task.title}"
    end
  end

  def ask_for_title
    puts "What do you need to do?"
    gets.chomp
  end

  def ask_for_index
    puts "Which number?"
    gets.chomp.to_i - 1
  end
end
