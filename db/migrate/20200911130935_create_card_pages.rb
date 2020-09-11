class CreateCardPages < ActiveRecord::Migration[5.2]
  def change
    create_table :card_pages do |t|
      t.string :title
      t.string :h1
      t.text :body

      t.timestamps
    end
  end
end
