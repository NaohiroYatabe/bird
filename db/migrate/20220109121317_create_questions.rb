class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :choice_1
      t.string :choice_2
      t.string :choice_3
      t.string :choice_4
      t.integer :quiz_id
      t.integer :answer
      t.timestamps
    end
  end
end
