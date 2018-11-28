class Project < ApplicationRecord
  belongs_to :manager, class_name: 'User', foreign_key: 'manager_id'
  has_many :tasks
  has_many :project_employee_cards
  has_many :employees, :through => :project_employee_cards, :source => :employee
end
