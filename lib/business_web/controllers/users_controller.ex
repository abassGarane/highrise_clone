defmodule BusinessWeb.UsersController do
  use BusinessWeb, :controller

  def index(conn, _params) do
    conn
    |> render(:index, layout: false)
  end
end
