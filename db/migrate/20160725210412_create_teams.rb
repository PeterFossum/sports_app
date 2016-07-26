class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.string :abbr
      t.string :conference
      t.string :division
      t.string :url

      t.timestamps
    end
  end
end
