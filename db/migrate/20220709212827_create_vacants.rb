class CreateVacants < ActiveRecord::Migration[6.1]
  def change
    create_table :vacants do |t|
      t.string :job
      t.text :description
      t.integer :number_vacancies
      t.integer :start_salary
      t.integer :end_salary
      t.date :start_date
      t.references :company, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :modality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
