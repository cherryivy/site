def rand_start_time(latest, earliest = DateTime.now)
  earliest_f = earliest.to_f
  latest_f = latest.to_f
  Time.at(rand * (latest_f - earliest_f) + earliest_f)
end

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

  desc "update all sample events to occur in the current week"
  task :update_sample_events => :environment do |t|
    old_events = Event.all(conditions: ["start_time < ?", DateTime.now])
    old_events.each do |event|
      start = rand_start_time(DateTime.now + 7)
      event.update_attributes(start_time: start, end_time: start + 3.hours)
    end
  end

end
