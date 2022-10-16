defmodule MangaStornWeb.PageController do
  use MangaStornWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
