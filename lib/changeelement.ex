defmodule Changeelement do

	def change_element(guess_string,list_gen,count,_input_alphabates,check_alphabate,a) do   
    input_alphabates = check_alphabate
    #Matching list generation
    li = Enum.with_index(list_gen) |> Enum.filter_map(fn {x, _} -> x == hd(a) end, fn {_, i} -> i end)
    
    cond do
      li ==[] and count == 0 ->
        IO.puts "FIRST WRONG ATTEMPT MADE"
        count = count + 1
        IO.puts "                      ______"
        IO.puts "                     |      |"
        IO.puts "                     O      | "
        Print.printit(guess_string)
        Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
      li ==[] and count == 1 ->
        IO.puts "SECOND WRONG ATTEMPT MADE"
        count = count + 1
        IO.puts "                      ______"
        IO.puts "                     |      |"
        IO.puts "                     O      | "
        IO.puts "                    /|      |"
        IO.puts  "\n"
        Print.printit(guess_string)
        Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
      li ==[] and count == 2 ->
        IO.puts "THIRD WRONG ATTEMPT MADE"
        count = count + 1
        IO.puts "                      ______"
        IO.puts "                     |      |"
        IO.puts "                     O      | "
        IO.puts "                    /|\\     |"
        IO.puts "\n"
        Print.printit(guess_string)
        Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
      li ==[] and count == 3 ->
        IO.puts "FOURTH WRONG ATTEMPT MADE"
        count = count + 1
        IO.puts "                      ______"
        IO.puts "                     |      |"
        IO.puts "                     O      | "
        IO.puts "                    /|\\     |"
        IO.puts "                     |      | "
        IO.puts "\n"
        Print.printit(guess_string)
        Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
      li ==[] and count == 4 ->
        IO.puts "FIFTH WRONG ATTEMPT MADE"
        count = count + 1
        IO.puts "                      ______"
        IO.puts "                     |      |"
        IO.puts "                     O      | "
        IO.puts "                    /|\\     |"
        IO.puts "                     |      | "
        IO.puts "                    /|      |"
        IO.puts "\n"
        Print.printit(guess_string)
        Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
      li ==[] and count == 5 ->
        IO.puts "                      ______"
        IO.puts "                     |      |"
        IO.puts "                     O      | "
        IO.puts "                    /|\\     |"
        IO.puts "                     |      | "
        IO.puts "                    /|\\     |"
        IO.puts "\n"
        Endit.endgame(list_gen)

        #input_element(guess_string,list_gen,count)
      true ->
        Replacefunction.replace_func(li,guess_string,a,list_gen,count,input_alphabates)
        

    end
  end
	
end