class CreateCodeLines < ActiveRecord::Migration
  def change
    create_table :code_lines do |t|
      t.string :code

      t.timestamps
    end
  end
end
