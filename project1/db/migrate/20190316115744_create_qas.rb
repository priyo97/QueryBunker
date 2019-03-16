class CreateQas < ActiveRecord::Migration
  def change
    create_table :qas do |t|
      t.text :questions
      t.text :answer

      t.timestamps null: false
    end
  end
end
