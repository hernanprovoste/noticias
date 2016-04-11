class Addautortoopinion < ActiveRecord::Migration
  def change
  	add_column :opinions, :autor, :string
  end
end
