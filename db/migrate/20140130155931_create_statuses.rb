class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :landing_id
      t.string :name
      t.string :color
      t.boolean :is_service, default: 0

      t.timestamps
    end
  end
end
