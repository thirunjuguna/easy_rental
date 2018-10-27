# frozen_string_literal: true

Role.create!(name: 'Administrator')
Role.create!(name: 'Landlord')
Role.create!(name: 'Tenant')

user = User.create(email: 'uriht@outlook.com', password: '123456')

user.add_role :administrator
