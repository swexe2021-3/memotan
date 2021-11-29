class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :purpose_id
      t.string :integer
      t.string :user_word
      t.string :string
      t.string :mean
      t.string :string
      t.string :user_id
      t.string :integer
      

      t.timestamps
    end
  end
end
