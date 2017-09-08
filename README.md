# Elixir-Phoenix-Demo

## Getting Started

run ``` brew install elixir ``` in the terminal to install Elixir

```iex``` to enter 'interactive elixir'. This allows you to run elixir expressions in the terminal.



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
