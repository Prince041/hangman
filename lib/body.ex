defmodule Aman do

  def first_time(string_gen) do                
    input_alphabates = ["Q","W","E","R","T","Y","U","I","O","P","A","S","D","F","G","J","H","K","L","Z","X","C","V","B","N","M"] 
    #list = ["JANUARY", "FEBRUARY", "MARCH", "APRIL","MAY","JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    count = 0
    #string_gen = Enum.random(list)
    length_of_string_gen = String.length(string_gen)
    guess_string=String.duplicate("-", length_of_string_gen)
    guess_string=String.graphemes(guess_string)
    list_gen = String.graphemes(string_gen)
    IO.puts "NAME OF A FLOWER->"
    IO.puts "\"#{guess_string}\""
    IO.puts "ENTER THE FIRST ELEMENT YOU WANT TO ADD -->>"
    Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
  end
end
#Aman.first_time("JANUARY")