class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user_comment
      t.string :string
      t.string :user_id
      t.string :integer
      t.string :word_id
      t.string :integer

      t.timestamps
    end
  end
end
