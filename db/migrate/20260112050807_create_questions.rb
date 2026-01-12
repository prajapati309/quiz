class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :question_type
      t.text :text
      t.jsonb :options
      t.string :correct_answer

      t.timestamps
    end
  end
end
