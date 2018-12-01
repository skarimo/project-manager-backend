class EmployeeSerializer < UserSerializer
  has_many :assigned_projects
end
