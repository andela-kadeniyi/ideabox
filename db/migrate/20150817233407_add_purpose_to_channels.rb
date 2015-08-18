class AddPurposeToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :purpose, :string
  end
end
