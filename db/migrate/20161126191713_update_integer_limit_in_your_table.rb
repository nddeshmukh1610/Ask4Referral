class UpdateIntegerLimitInYourTable < ActiveRecord::Migration
  def change
  change_column :referrals, :contactno, :bigint, limit: 8
  end
end
