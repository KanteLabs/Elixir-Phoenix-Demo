IO.puts "Calculator loaded"
IO.puts "Calc accepts 2 inputs. "

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
        val = a / b
        IO.puts val
    end
    
end