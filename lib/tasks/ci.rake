namespace :ci do
  task :create_superadmin, [:user_name, :password] => :environment do |t, args|
  	password_mask = '*' * args[:password].length
  	sa = SuperAdmin.create(login: args[:user_name]) # , password: args[:password])
    puts "Created superadmin #{sa.login} with password '#{password_mask}'"      	
  end
end
