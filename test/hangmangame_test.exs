defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangmangame

  
  test "Test Supervisor" do
  	assert elem(Hangmangame.start(1,2), 0) == :ok
  end

  test "When Player Wins" do
  	assert Endit.endgame() == "------------------------GAME OVER---------------------------"
  end

  test "When Entering next element" do
  	assert Print.printit("AMAN") == :ok
  end

  test "When all elements replaced" do
  	assert Replacefunction.replace_func([],["M","A","Y"],"A",["M","A","Y"],0,["Q","W"]) == "---------------------CONGRATULATIONS!!!!! YOU WON---------------------"
  end

  test "Checking Data Parser" do
  	list = ["AMARYLLIS","ASTER","CALLA","ANTHURIUM","SUNFLOWER","DAISY","TULIP","DAHLIA",
    "COXCOMB","DAFFODIL","DELPHINIUM","FREESIA","GINGER","IRIS","LILY","ORCHID","ROSE","LOTUS"]
  	assert to_string(DataParser.parse_data()) in list == true
  end

end
