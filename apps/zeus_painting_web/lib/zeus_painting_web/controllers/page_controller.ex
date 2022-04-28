defmodule ZeusPaintingWeb.PageController do
  use ZeusPaintingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
