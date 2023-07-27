class CreateRequirementsYamls < ActiveRecord::Migration[7.0]
  def change
    create_table :requirements_yamls do |t|
      t.string :requirements_path

      t.timestamps
    end
  end
end
