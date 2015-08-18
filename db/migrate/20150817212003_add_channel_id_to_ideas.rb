class AddChannelIdToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :channel_id, :integer
  end
end
