class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :status, :default => "PENDING ACCEPTANCE"
      t.integer :employee_id
      t.integer :project_id
      t.timestamps
    end
  end
end
