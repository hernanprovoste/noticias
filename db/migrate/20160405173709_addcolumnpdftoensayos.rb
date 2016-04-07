class Addcolumnpdftoensayos < ActiveRecord::Migration
  def self.up
     add_attachment :ensayos, :pdf
    end

   def self.down
     remove_attachment :ensayos, :pdf
   end
end
