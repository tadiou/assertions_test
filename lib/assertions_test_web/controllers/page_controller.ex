defmodule AssertionsTestWeb.PageController do
  use AssertionsTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
