class CreateSwitts < ActiveRecord::Migration
  def change
    create_table :switts do |t|
      t.string :name
      t.string :super_power

      t.timestamps null: false
    end
  end
end
