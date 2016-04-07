class Addautortoensayos < ActiveRecord::Migration
  def change
  	add_column :ensayos, :autor, :string
  end
end
