class ManagerSerializer < UserSerializer
  has_many :projects
  has_many :employees
end
