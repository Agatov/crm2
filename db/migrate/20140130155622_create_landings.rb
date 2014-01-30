class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.integer :account_id
      t.string :name

      t.timestamps
    end
  end
end
