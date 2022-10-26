class CreateTeam < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :win_loss_tie
      t.filename :img
    end
  end
end
