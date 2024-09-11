class CreateBorrowers < ActiveRecord::Migration[7.2]
  def change
    create_table :borrowers do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
