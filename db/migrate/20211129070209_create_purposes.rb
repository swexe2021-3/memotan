class CreatePurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :purposes do |t|
      t.string :user_purpose
      t.string :string
      t.string :user_id
      t.string :string
      
      t.timestamps
    end
  end
end
