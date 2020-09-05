class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :live_link
      t.string :source_link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
