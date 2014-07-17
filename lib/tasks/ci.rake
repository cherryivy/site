namespace :ci do
  desc "params: login, email, password. Create a superadmin with those properties"
  task :create_superadmin, [:name, :email, :password] => :environment do |t, args|
  	user = User.find_by_name(args[:login].downcase)
  	unless user.nil?
	    puts "User already exists."
	    exit 0
  	end

  	password_mask = '*' * args[:password].length
  	sa = SuperAdmin.create!(
  	  name:                  args[:name],
  	  email:                 args[:email], 
  	  password:              args[:password],
  	  password_confirmation: args[:password]
  	)
    puts "Created superadmin #{sa.login} with password '#{password_mask}'"      	
  end
end
