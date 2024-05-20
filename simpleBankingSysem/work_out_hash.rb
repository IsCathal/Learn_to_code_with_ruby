class Account 
    attr_reader :account_number, :name
    attr_accessor :money
  
    def initialize(name)
      @name = name
      @money = 0
      @account_number = generate_account_number
    end
  
    private
  
    def generate_account_number
      rand(10_000..99_999)
    end
  end
  

  cathal = Account.new("Charlie")
  tom = Account.new("tom")

  p cathal

  p tom

  accounts = {}

  accounts.store(cathal.account_number, cathal.money)
  accounts.store(tom.account_number, tom.money)



  p "accoounts is #{accounts}"

  

  require_relative "account"
  accounts = {}
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
        name = Account.new(name)
        accounts.store(name.account_number, name.money)
        puts "Your account has been created successfully. Your account number is #{name.account_number}"
        puts
        usercount += 1
      when 2
        puts "Enter your account number:"
        user_input_account_number = gets.to_i
        puts "Enter the amount to deposit" 
        deposit = gets.to_i
        accounts[user_input_account_number] += deposit
      when 3
        puts "Enter your account number:"
        user_input_account_number = gets.to_i
        puts "Enter the amount to withdraw" 
        deposit = gets.to_i
        accounts[user_input_account_number] -= deposit
        puts "#{deposit} has been withdrawn into your account"
  
      when 4 
        puts "Enter your account number:"
        user_input_account_number = gets.to_i
        balance = 0 
        puts "Your current balance is #{accounts[user_input_account_number]}"

      else
          puts  "Error, Please enter Number between 1 and 5"
          puts
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
  