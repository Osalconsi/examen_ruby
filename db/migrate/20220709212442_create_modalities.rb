class CreateModalities < ActiveRecord::Migration[6.1]
  def change
    create_table :modalities do |t|
      t.string :name

      t.timestamps
    end
  end
end
