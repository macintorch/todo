
# puts "Put your application code in #{File.expand_path(__FILE__)}"

require_relative 'config/application'
require_relative 'app/controllers/task_controller'
require_relative 'app/models/task'


def list
  list = TaskController.list
  puts "TODO list:"
  list.each do |task|
      # puts "#{task[:id]}. #{task[:task]} #{task[:completed]}"
    if task[:completed] == 1
      puts "#{task[:id]}. #{task[:task]} --- DONE"
    elsif task[:completed] == 0
      puts "#{task[:id]}. #{task[:task]}"
    end

  end

  
end

input = ARGV

  if input[0] == "list"
    list

  elsif input[0] == "add"
     
    TaskController.add(input[1..5].join(" "))
    
    puts "New Task Created #{input[1..5].join(" ")} into your TODO list..."

  elsif input[0] == "update"
     
    TaskController.update_task(input[1..5].join(" "))
    
    puts "Task #{TaskController.task(input[1].to_i)} updated #{input[1..5].join(" ")} into your TODO list..."


  elsif input[0] == "delete"
    puts "Deleted #{TaskController.task(input[1].to_i)} from your TODO list..."
    TaskController.delete(input[1].to_i)

  elsif input[0] == "complete"
    TaskController.update(input[1].to_i)
    list

  else
    "Command unidentified. Please input list, add, delete."

  end