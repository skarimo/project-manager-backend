class CreateProjectEmployeeCards < ActiveRecord::Migration[5.2]
  def change
    create_table :project_employee_cards do |t|
      t.integer :project_id
      t.integer :employee_id
      t.timestamps
    end
  end
end
