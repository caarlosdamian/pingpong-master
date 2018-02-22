class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.references :opponent, index: true, foreign_key: true
      t.integer :yscore
      t.integer :tscore

      t.timestamps null: false
    end
  end
end
