require_relative '../../config/application'
require_relative '../models/task.rb'

class TaskController
  attr_accessor :id, :task

  def self.list
    Task.all
  end

  def self.task_name(id)
    task = Task.find(id)
    task[:task]
  end

  def self.add(task)
    Task.create(task: task)
  end

  def self.delete(id)
    Task.delete(id)
  end
end