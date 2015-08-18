class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
