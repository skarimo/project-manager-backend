# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "1", last_name: "1", username: "1", password: "123456", email: "1@test", account_type: "MANAGER")
User.create(first_name: "2", last_name: "2", username: "2", password: "123456", email: "2@test", account_type: "EMPLOYEE", manager_id: 1)
User.create(first_name: "3", last_name: "3", username: "3", password: "123456", email: "3@test", account_type: "EMPLOYEE", manager_id: 1)
User.create(first_name: "4", last_name: "4", username: "4", password: "123456", email: "4@test", account_type: "EMPLOYEE", manager_id: 1)

Project.create(name: "test project", manager_id: 1)

ProjectEmployeeCard.create(project_id: 1, employee_id: 2)
ProjectEmployeeCard.create(project_id: 1, employee_id: 3)
ProjectEmployeeCard.create(project_id: 1, employee_id: 4)

Task.create(name: "test task", description: "this is a test task", project_id: 1, employee_id: 1)
Task.create(name: "test task 3", description: "this is a test task", project_id: 1, employee_id: 1)
Task.create(name: "test task 1", description: "this is a test task", project_id: 1, employee_id: 2)
Task.create(name: "test task 2", description: "this is a test task", project_id: 1, employee_id: 3)
