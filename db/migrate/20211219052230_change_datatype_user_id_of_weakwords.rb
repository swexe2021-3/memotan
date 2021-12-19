class ChangeDatatypeUserIdOfWeakwords < ActiveRecord::Migration[5.2]
  def change
    change_column :weakwords, :user_id, :integer
  end
end
