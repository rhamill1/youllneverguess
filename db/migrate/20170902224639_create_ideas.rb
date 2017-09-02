class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.string :idea_name
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
