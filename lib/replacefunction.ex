defmodule Replacefunction do

  def replace_func([],guess_string,_a,list_gen,count,input_alphabates) do
      cond do
        Enum.all?(guess_string, fn(x) -> x != "-" end) ->
          IO.inspect to_string(guess_string)
          ("---------------------CONGRATULATIONS!!!!! YOU WON---------------------")
        true ->
          IO.puts "\"#{guess_string}\""
          IO.puts ("WHAT'S YOUR NEXT GUESS -->>")
          Inputelement.input_element(guess_string,list_gen,count,input_alphabates)
      end            
    end


    def replace_func([h|t],guess_string,a,list_gen,count,input_alphabates) do
      guess_string = List.replace_at(guess_string,h,hd(a))
      replace_func(t,guess_string,a,list_gen,count,input_alphabates)
    end
end

#Replacefunction.replace_func(["A","M","A","N"],["A","M","A","N"],"A",)