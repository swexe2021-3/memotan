class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      #t.string :string
      t.string :pass
      t.string :string

      t.timestamps
    end
  end
end
