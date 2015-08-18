class AddIdeaIdToRemarks < ActiveRecord::Migration
  def change
    add_column :remarks, :idea_id, :integer
  end
end
