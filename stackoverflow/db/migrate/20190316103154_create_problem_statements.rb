class CreateProblemStatements < ActiveRecord::Migration
  def change
    create_table :problem_statements do |t|
      t.text :question
      t.text :answer

      t.timestamps null: false
    end
  end
end
