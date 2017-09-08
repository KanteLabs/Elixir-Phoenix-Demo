IO.puts "Calculator loaded"
IO.puts "Calc.add/2, Calc.sub/2, Calc.multi/2"

defmodule Calc do
    def add(a, b) do
        val = a + b
       IO.puts val
        val
    end

    def sub(a, b) do
        val = a - b
        IO.puts val
    end

    def multi(a, b) do
        val = a * b
        IO.puts val
    end

    def div(a, b) do
        IO.puts a / b
    end
    
end