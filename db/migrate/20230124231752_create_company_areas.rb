class CreateCompanyAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :company_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end
