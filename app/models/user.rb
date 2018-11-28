class User < ApplicationRecord
   #Validations
   validates_presence_of :email, :first_name, :last_name, :account_type
   validates :email, uniqueness: true
   validates :username, uniqueness: true
   has_secure_password
   validates :password, length: { minimum: 6, maximum: 15 }, on: :create

   has_many :employees, :class_name => "User", :foreign_key => :manager_id
   belongs_to :manager, :class_name => "User", optional: true

   has_many :projects, class_name: 'Project', foreign_key: 'manager_id'

   has_many :project_employee_cards, foreign_key: :employee_id

   has_many :assigned_projects, :through => :project_employee_cards, :source => :project


end
