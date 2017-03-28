class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
