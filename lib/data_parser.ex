defmodule DataParser do
	def parse_data() do
		
    	list = ["AMARYLLIS","ASTER","CALLA","ANTHURIUM","SUNFLOWER","DAISY","TULIP","DAHLIA",
    "COXCOMB","DAFFODIL","DELPHINIUM","FREESIA","GINGER","IRIS","LILY","ORCHID","ROSE","LOTUS"]
		Enum.random(list)


	end

end

IO.puts DataParser.parse_data()