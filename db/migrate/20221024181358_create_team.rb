class CreateTeam < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :record
    end
  end
end
