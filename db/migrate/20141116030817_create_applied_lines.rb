class CreateAppliedLines < ActiveRecord::Migration
  def change
    create_table :applied_lines do |t|
      t.string :code

      t.timestamps
    end
  end
end
