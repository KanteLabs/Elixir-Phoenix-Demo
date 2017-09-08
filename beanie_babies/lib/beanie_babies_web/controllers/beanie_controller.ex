defmodule BeanieBabiesWeb.BeanieController do
  use BeanieBabiesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"baby" => baby}) do
    render conn, "show.html", baby: baby
  end
end