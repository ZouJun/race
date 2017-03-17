namespace :dev do
  desc 'created admins'
  task :create_admins => :environment do
    puts 'Starting create admins ******'
    admin = Admin.where(login: 'admin').first_or_create(name: '管理员', password: 111111, password_confirmation: 111111)
    puts "created admin: #{admin.name}"
  end
end