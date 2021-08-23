defmodule VideokeWeb.PageController do
  use VideokeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
