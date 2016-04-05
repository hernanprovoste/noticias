class Addsubtitletonotices < ActiveRecord::Migration
  def change
  	  	add_column :notices, :subtitle, :string
  end
end
