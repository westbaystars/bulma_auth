defmodule BulmaAuthWeb.PageController do
  use BulmaAuthWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
