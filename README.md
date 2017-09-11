# Getting Started With Elixir and Phoenix

## Elixir
Elixir is a dynamic, functional language designed for building scalable and maintainable applications.
Elixir leverages the Erlang VM, known for running low-latency, distributed and fault-tolerant systems, while also being successfully used in web development and the embedded software domain.

 ``` brew install elixir ``` in the terminal to install Elixir

```iex``` to enter 'interactive elixir'. This allows you to run elixir expressions in the terminal.

# Elixir

## Basic Types

Syntax
```Elixir
iex> 1          # integer
iex> 0x1F       # integer
iex> 1.0        # float
iex> true       # boolean
iex> :atom      # atom / symbol
iex> "elixir"   # string
iex> [1, 2, 3]  # list
iex> {1, 2, 3}  # tuple
```

## Simple Calculator
To create a calculator in Elixir you will first need to create a file with the extension ' *.ex ' such as calculator.ex

First we need to define our module which can be done with:

```Elixir
defmodule Calc do

end
```

Inside of our module we can right all of our different math methods. For instance for addition you would do:

```Elixir
defmodule Calc do
    def add(a, b) do
        val = a + b
        IO.puts val
    end
end
```

You can continue to do this for every math method that you want. 

In order to compile the code so that you can run it from the terminal you need to enter:
``` elixirc calculator.ex```
This will create a file called Elixir.Calc.beam. The middle word Calc is the name of the module that you defined inside the file.
For instance 'defmoudle Calc'

### Full Calculator Code
Calculator
```Elixir
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
```

## Phoenix

## Installation
Install all Dependencies by running the following in the command line:

### Elixir
(this command installs elixir and erlang)
``` brew install elixir```

### Hex
```mix local.hex```

### Phoenix
```mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez```

## Creating a Phoenix Web App
Create the app by running 
```mix phx.new [app name]``` 

Then run `cd [app name]` and configure the database in config/dev.exs by running `mix ecto.create`. (you may have to run `createuser -s -r postgres` for this to work) 

The app can be run with the command 
```mix phx.server``` 
or inside interactive elixir with 
```iex -S mix phx.server```
