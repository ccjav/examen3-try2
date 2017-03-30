class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :from
      t.string :to
      t.date :date
      t.integer :passengers

      t.timestamps
    end
  end
end
