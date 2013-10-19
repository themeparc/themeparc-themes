class AddFieldsToTheme < ActiveRecord::Migration
  def change
    change_table :themes do |t|
      t.string :theme_title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
    end
  end
end
