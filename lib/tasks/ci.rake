namespace :ci do
  task :create_superadmin, [:user_name, :email, :password] => :environment do |t, args|
  	user = User.find_by_name(args[:user_name].downcase)
  	unless user.nil?
	  puts "User already exists."
	  return
  	end

  	password_mask = '*' * args[:password].length
  	sa = SuperAdmin.create!(
  	  name:                  args[:user_name],
  	  login:                 args[:user_name],
  	  email:                 args[:email], 
  	  password:              args[:password],
  	  password_confirmation: args[:password]
  	)
    puts "Created superadmin #{sa.login} with password '#{password_mask}'"      	
  end
end
