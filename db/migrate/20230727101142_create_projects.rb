class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :git_repo_url
      t.integer :organization_id
      t.references :deployable, polymorphic: true, null: false

      t.timestamps
    end
    add_index :projects, :name, unique: true
  end
end
