class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :name
      t.string :slug
      t.string :map_link

      t.timestamps
    end
  end
end
