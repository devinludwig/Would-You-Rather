class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.integer :votes_one
      t.integer :votes_two
      t.string :answer_one
      t.string :answer_two

      t.timestamps
    end
    create_table :comments do |t|
      t.string :content
      t.integer :option_id

      t.timestamps
    end
    drop_table :questions
  end
end
