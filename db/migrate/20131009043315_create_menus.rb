class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :nama
      t.string :jenis
      t.integer :stock

      t.timestamps
    end
  end
end
