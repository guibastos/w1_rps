puts "Play Rock Paper Scissors!"


def play_game 
  #this method plays one hand of the game
  choices = ["r", "p", "s"]
  choices_descr = {r:"Rock", p:"Paper", s:"Scissors"}
  user_choice = ''
  computer_choice = ''
  
  loop do
    puts "Chose one: (r/p/s)"
    user_choice = choices_descr[gets.chomp.downcase.to_sym]
    computer_choice = choices_descr[choices[rand(0..2)].to_sym]
    if choices_descr.has_value?(user_choice)
      break
    end
  end

  if user_choice == computer_choice
    result = "It's a tie."
  elsif user_choice == "Rock" && computer_choice == "Paper"
    result = "Paper wraps Rock!\r\nComputer won!"
  elsif user_choice == "Rock" && computer_choice == "Scissors"
    result = "Rock breaks Scissors!\r\nYou won!"
  elsif user_choice == "Paper" && computer_choice == "Rock"
    result = "Paper wraps Rock!\r\nYou won!"
  elsif user_choice == "Paper" && computer_choice == "Scissors"
    result = "Scissors cut Paper!\r\nComputer won!"
  elsif user_choice == "Scissors" && computer_choice == "Rock"
    result = "Rock breaks Scissors!\r\nComputer won!"
  elsif user_choice == "Scissors" && computer_choice == "Paper"
    result = "Scissors cut paper!\r\nYou won!"
  end

  puts "You picked #{user_choice} and computer picked #{computer_choice}"
  puts result

end
  
# Here we play multiple games depending on user input (yes or no)
loop do
  play_game
  puts "Play again? (Y/N)"
  play_again = gets.chomp.downcase
  if play_again != 'y'
    break
  end
end

