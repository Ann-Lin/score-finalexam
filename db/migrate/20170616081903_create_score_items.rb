class CreateScoreItems < ActiveRecord::Migration[5.1]
  def change
    create_table :score_items do |t|
      t.string :name
      t.string :number
      t.string :score

      t.timestamps
    end
  end
end
