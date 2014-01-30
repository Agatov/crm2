class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account_id
      t.string :email
      t.string :password
      t.string :name
      t.string :avatar

      t.timestamps
    end
  end
end
