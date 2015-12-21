require_relative '../../config/application'
require_relative '../models/task.rb'

class TaskController
  attr_accessor :id, :task, :completed

  def self.list
    Task.all
  end

  def self.task(id)
    task = Task.find(id)
    task[:task]
  end

  def self.add(task)
    Task.create(task: task, completed: 0)
  end

  def self.delete(id)
    Task.delete(id)
  end

  def self.update(id)
    task = Task.find(id)
    task[:completed] = 1
    task.save
  end

  def self.update_task(id)
    task = Task.find(id)
    task.update(task: task)
    task.save
  end

  def self.list_completed
    Task.find(:all, :condition => [completed: 1])
  end


end