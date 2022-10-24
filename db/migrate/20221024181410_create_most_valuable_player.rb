class CreateMostValuablePlayer < ActiveRecord::Migration[6.1]
  def change
    create_table :most_valuable_players do |t|
      t.string :name
      t.string :position
      t.integer :team_id
    end
  end
end
