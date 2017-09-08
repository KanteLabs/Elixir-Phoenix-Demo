defmodule BeanieBabiesWeb.Router do
  use BeanieBabiesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BeanieBabiesWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/beanies", BeanieController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", BeanieBabiesWeb do
  #   pipe_through :api
  # end
end
