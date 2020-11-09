class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.text :description
      t.integer :user_id
      t.boolean :public

      t.timestamps
    end
  end
end
