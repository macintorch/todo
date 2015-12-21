
# puts "Put your application code in #{File.expand_path(__FILE__)}"

require_relative 'config/application'
require_relative 'app/controllers/task_controller'
require_relative 'app/models/task'
require 'byebug'


def list
  list = TaskController.list
  puts "TODO list:"
  list.each do |task|
      puts "#{task[:id]}. #{task[:task]}"
    end
  
end

input = ARGV

  if input[0] == "list"
    list

  elsif input[0] == "add"
     
    TaskController.add(input[1..5].join(" "))
    
    puts "Appended #{input[1..5].join(" ")} to your TODO list..."


  elsif input[0] == "delete"
    puts "Deleted #{TaskController.task(input[1].to_i)} from your TODO list..."
    TaskController.delete(input[1].to_i)


  else
    "Command unidentified. Please input list, add, delete."

  end