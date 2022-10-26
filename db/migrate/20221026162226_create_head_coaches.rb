class CreateHeadCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :head_coaches do |t|
      t.string :name
      t.integer :team_id
    end
  end
end
