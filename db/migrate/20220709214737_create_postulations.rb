class CreatePostulations < ActiveRecord::Migration[6.1]
  def change
    create_table :postulations do |t|
      t.references :person, null: false, foreign_key: true
      t.references :vacant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
