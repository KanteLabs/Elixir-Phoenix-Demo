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
For instance 'defmodule Calc'

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

## Beanie Babies App
Using Elixir and Phoenix we attempted to create a full stack application that would give users details about different beanie babies. 
We were capable of creating routes to show and display all or individual data, however it was difficult to get the the data from postgres to be requested by the front end.

The routes that we used. We original had to separate lines of code before we switched it out to just use resources.
```Elixir
scope "/", BeanieBabiesWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/beanies", BeanieController
    # get "/beanies", BeanieController, :index
    # get "/beanies/:baby", BeanieController, :show
  end
```

This is how we setup our beanie controller to receive information from the routes.
```Elixir
defmodule BeanieBabiesWeb.BeanieController do
  use BeanieBabiesWeb, :controller
  
  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"id" => id}) do
    render conn, "show.html", id: id
  end
end
```

This next section is how we layed out information for our database.

Schema -> Similar to ruby schema
```Elixir
  schema "beanie_babies" do
    field :name, :string
    field :notes, :string
    field :picture_url, :string
    field :value, :integer
    field :year, :integer

    timestamps()
  end
```
Seed Data -> ```mix run priv/repo/seeds.exs ```
```Elixir
beanies = [
%BeanieBabies.Beanie_baby{name: "Kaleb", notes: "", picture_url: "http://world.ty.com/images/tfi/39/35ccb666ac2e650c651f98872dd38c11_lg.gif",value: 4,year: 2017},
%BeanieBabies.Beanie_baby{name: "Baylee", notes: "", picture_url: "http://world.ty.com/images/tfi/6/cf246fe0e2e773298f32e92636ff591f_lg.gif",value: 12,year: 2001},
%BeanieBabies.Beanie_baby{name: "Pongo", notes: "", picture_url: "http://world.ty.com/images/tfi/6/e1921f6357ad6c1f3ad4c6e4d2841f15_lg.gif",value: 10,year: 2005}
]

Enum.each(beanies, fn (beanie) -> BeanieBabies.Repo.insert(beanie) end)
```