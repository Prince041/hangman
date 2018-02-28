defmodule Inputelement do

	def input_element(guess_string,list_gen,count,input_alphabates) do
                
	    a = String.trim(IO.gets "")
	    a = String.upcase(a)
	    a = String.graphemes(a)
	    
	    check_alphabate = input_alphabates -- a
	    
	    cond do
	      check_alphabate != input_alphabates ->
	        
	        Changeelement.change_element(guess_string,list_gen,count,input_alphabates,check_alphabate,a)
	      true                                 ->
	        IO.puts "This character already used :) "
	        input_element(guess_string,list_gen,count,input_alphabates)
	     end 
    end
	
end