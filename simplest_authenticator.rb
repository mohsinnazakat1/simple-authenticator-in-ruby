users = [
    {'username' => 'mohsin', 'password' => 'abc123a'},
    {'username' =>  'nomi', 'password' =>'abc123c'},
    {'username' =>  'ghazi', 'password' =>'abc123d'},
    {'username' =>  'haseeb', 'password' =>'abc123e'},
    {'username' =>  'mashoor', 'password' =>'abc123f'},
]

puts 'Welcome to Simple Authenticator'
35.times {print '-'}
puts 
puts 'This authenticator will take username and password from you ) authenticate it'
puts 'In case of correct password object will be returned'
puts 'In case of incorrect password error will be returned'
puts 'After 4 wrong attempt you will be exited from the program'

def auth_user username, password, users_record
    users_record.each do |user|
        if user['username'] == username && user['password'] == password
            return user
        end
    end
    return 'Credentials were not correct'
end

attempt = 1
while attempt<4
    puts 'Enter the username'
    username = gets.chomp
    puts 'Enter the password'
    password = gets.chomp
    puts auth_user username, password, users
    puts 'Press n to quit and any other key to continue'
    reponse = gets.chomp.downcase
    break if reponse == 'n'
    attempt += 1

end
 puts 'You have exceeded the 4 attempts' if attempt == 4 


