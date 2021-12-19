class ChangeDatatypeWordIdOfWeakwords < ActiveRecord::Migration[5.2]
  def change
    change_column :weakwords, :word_id, :integer
  end
end
