defmodule BusinessWeb.PageController do
  use BusinessWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    conn
    |> render(:home, layout: false)
  end
end
