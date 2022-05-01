users = [
    {'username' =>  'mohsin', 'password' => 'abc123a'},
     {'username' =>  'nomi', 'password' =>'abc123c'},
    {'username' =>  'ghazi', 'password' =>'abc123d'},
    {'username' =>  'haseeb', 'password' =>'abc123e'},
    {'username' =>  'mashoor', 'password' =>'abc123f'},
]

puts 'Welcome to Simple Authenticator'
35.times {print '-'}
puts 'This authenticator will take username and password from you and authenticate it'
puts 'In case of correct password object will be returned'
puts 'In case of incorrect password error will be returned'
puts 'After 3 wrong attempt you will be exited from the program'

match_hash = 0
wrong_attempts = 0 
termination_code = 0 

while wrong_attempts <3 && termination_code == 0
    
    puts 'Enter username'
    username = gets.chomp

    puts 'Enter password'
    password = gets.chomp

    entered_creds = {'username'=> username, 'password'=> password}

    users.each do |i|
        if i == entered_creds
            puts "User name password found \n #{i}"
            match_hash = 1
        end
            
    end

    if match_hash == 0
        puts 'Invalaid username/password no record found'
        wrong_attempts +=1
    end

    puts "Want to Enter credentials again (y/n)"
    terminate_input = gets.chomp

    if terminate_input == 'y'
        termination_code = 0
    elsif terminate_input == 'n'
        termination_code  =1
    else
        termination_code = 1
        puts 'Invalid Entry'

    end

end

if wrong_attempts == 3
    puts 'Too many wrong attempts You are exited now'
else
    puts 'you are exited now'
end

