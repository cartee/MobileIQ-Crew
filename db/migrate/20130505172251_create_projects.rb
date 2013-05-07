class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.boolean :started
      t.text :status

      t.timestamps
    end
  end
end
