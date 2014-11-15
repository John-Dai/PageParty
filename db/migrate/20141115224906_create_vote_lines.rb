class CreateVoteLines < ActiveRecord::Migration
  def change
    create_table :vote_lines do |t|
      t.string :code
      t.integer :votes

      t.timestamps
    end
  end
end
