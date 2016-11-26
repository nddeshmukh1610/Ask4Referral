class ChangeDataTypeForContactno < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.change :contactno, :integer
    end
  end
  def self.down
    change_table :jobs do |t|
      t.change :contactno, :bigint
    end
  end
end
