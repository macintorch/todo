
# this is where you should use an ActiveRecord migration to 

class CreateTodos < ActiveRecord::Migration
  def change
    	create_table :tasks do |t|
    	
    	t.integer :completed
    	t.string :task
    	t.timestamps null: false
    end
  end
end