class CreateWeakwords < ActiveRecord::Migration[5.2]
  def change
    create_table :weakwords do |t|
      t.string :word_id
      t.string :integer
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
