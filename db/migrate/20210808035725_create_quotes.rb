class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.integer :quoteid
      t.text :quotetext
      t.string :quoteby
      t.timestamps
    end
  end
end
