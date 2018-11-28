class EmployeeSerializer < ActiveModel::Serializer
  attributes :id
  has_many :assigned_projects
end
