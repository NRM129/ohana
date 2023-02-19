class CreateUsageTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :usage_types do |t|

      t.timestamps
    end
  end
end
