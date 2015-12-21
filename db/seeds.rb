require 'faker'
require_relative '../app/models/task'

module TasksImporter
  def self.import
    10.times do |task|
      task = Task.create(task: Faker::Lorem.word)
    end
  end
end