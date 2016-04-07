class CreateEnsayos < ActiveRecord::Migration
  def change
    create_table :ensayos do |t|
      t.string :titlo

      t.timestamps null: false
    end
  end
end
