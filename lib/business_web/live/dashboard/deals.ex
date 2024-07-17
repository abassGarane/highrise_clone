defmodule BusinessWeb.Dashboard.Deals do
  alias Business.Deal
  use BusinessWeb, :live_view

  def mount(_, _, socket) do
    cs = Map.from_struct(%Deal{})

    socket =
      socket
      |> assign(:form, to_form(cs))

    {:ok, socket}
  end
end
