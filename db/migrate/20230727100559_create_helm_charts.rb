class CreateHelmCharts < ActiveRecord::Migration[7.0]
  def change
    create_table :helm_charts do |t|
      t.string :chart_path

      t.timestamps
    end
  end
end
