class UpgradeClearanceToDiesel < ActiveRecord::Migration
  def self.up
    change_table :users  do |t|
      t.string :encrypted_password, :limit => 128
      t.string :confirmation_token, :limit => 128
    end

  end

  def self.down
    change_table :users do |t|
      t.remove :encrypted_password,:confirmation_token
    end
  end
end
