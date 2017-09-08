# Elixir-Phoenix-Demo

## Getting Started

run ``` brew install elixir ``` in the terminal to install Elixir

```iex``` to enter 'interactive elixir'. This allows you to run elixir expressions in the terminal.

<<<<<<< HEAD
## Basic Types

iex> 1          # integer
iex> 0x1F       # integer
iex> 1.0        # float
iex> true       # boolean
iex> :atom      # atom / symbol
iex> "elixir"   # string
iex> [1, 2, 3]  # list
iex> {1, 2, 3}  # tuple

String.methodName(value)
```String.length("cat") -> 5``` 
=======


# Phoenix

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
>>>>>>> b5a2f1f570b569089596c97e11dc0962b70e1de5
