# probably do Sunday Night, as I want to be chill
# also want to finish classes first 
# just want to exclusivy use this repo to do it, you get the idea
# need to rspec section on udemy
# need to find plugin to format ruby
# going to keep a rough hacked version and have a cleaned up
#need to figure out loop a while loop

class Bank 

    attr_reader :accountNumber, :money

    def initialize(name)
        @name = name
        @money = 0
        @accountNumber = generate_account_number
    end

    def account_number_balanceChecket(accountNumber)
        money
    end
    
    private

    def generate_account_number
        random_number = rand(10_000..99_999)
        another_random_number = rand(10_000..99_999)
        "2024 -#{random_number}-#{another_random_number}"
    end


end

users_Array = []

    puts "Welcome to the Simple Banking System! 
    1. Create an account 
    2. Deposit money 
    3. Withdraw money 
    4. Check balance 
    5. Exit"
    
    user_input_number = gets.to_i
  
    while user_input_number != 5

     case user_input_number
         when 1
         puts "Enter your name:"
         name = gets
         users_Array << Bank.new(name)
         puts " Your account has been vreated successfully. Your account number is "
         p users_Array
         
     when 2
         puts "Enter your account number:"
         accountNumber = gets
         puts "Enter the amount to deposit" 
         deposit = gets
         
     when 3
        puts "Enter your account number:"
        accountNumber = gets
        puts "Enter the amount to withdraw" 
        deposit = gets
        
     when 4 
        puts "Enter your account number:"
        accountNumber = gets
        puts "Your current balance is "
        
        else
           "Error, Please enter Number between 1 and 5"

        end

           puts "Welcome to the Simple Banking System! 
           1. Create an account 
           2. Deposit money 
           3. Withdraw money 
           4. Check balance 
           5. Exit"
           user_input_number = gets.to_i
    end

    

    puts "Thank you for using the Simple Banking System. Goodbye!"










