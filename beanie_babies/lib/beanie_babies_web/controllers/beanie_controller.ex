defmodule BeanieBabiesWeb.BeanieController do
  use BeanieBabiesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end