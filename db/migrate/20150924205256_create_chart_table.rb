class CreateChartTable < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.string :chart_data, null: false

      t.timestamps
    end
  end
end
