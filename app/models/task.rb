class Task < ApplicationRecord
  belongs_to :project
  belongs_to :employee, class_name: 'User', foreign_key: 'employee_id', optional: true
end
