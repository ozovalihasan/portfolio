class CreateProjectsTags < ActiveRecord::Migration[6.0]
  def change
    create_table :projects_tags do |t|
      t.references :tag, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
