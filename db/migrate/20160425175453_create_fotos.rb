class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :title
      t.text :subtitle

      t.timestamps null: false
    end
  end
end
