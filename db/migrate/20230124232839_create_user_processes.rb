class CreateUserProcesses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_processes do |t|
      t.string :name
      t.float :weight
      t.float :evaluation
      t.references :company_area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
