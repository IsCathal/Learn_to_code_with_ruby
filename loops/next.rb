#next - move automaticall to the next iteration of a  loop

#break - terminates the loop completley
money = " I live the money¢ all the money"

current_index = 0

final_index = money.length - 1 #starts at zero

while current_index <= final_index
    # if money[current_index] == "¢"
    if money[current_index] != "¢"
        current_index += 1
        puts money[current_index]

        # pretty sure java wont complile here, if a loop has no exit
        next # next keyword tells the loop to go back up again to beginning
    end


    puts "Found ¢ at index #{current_index}"
    current_index +=1
      
    
end