# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(name: "Roberto", id_verification_status: :verified)
User.create(name: "Carlos", id_verification_status: :unverified)
AdminUser.create!(email: 'alekito@dev.br', password: 'test123', password_confirmation: 'test123') if Rails.env.development?