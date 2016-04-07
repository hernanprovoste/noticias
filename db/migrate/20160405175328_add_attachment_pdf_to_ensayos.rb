class AddAttachmentPdfToEnsayos < ActiveRecord::Migration
  def self.up
    change_table :ensayos do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :ensayos, :pdf
  end
end
