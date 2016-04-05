class Adddatetonotices < ActiveRecord::Migration
  def change
  	add_column :notices, :date, :datetime
  end
end
