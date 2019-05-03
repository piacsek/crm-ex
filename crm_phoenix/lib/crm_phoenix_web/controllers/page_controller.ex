defmodule CrmPhoenixWeb.PageController do
  use CrmPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
