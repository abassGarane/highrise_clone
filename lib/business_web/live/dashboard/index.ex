defmodule BusinessWeb.Dashboard.Index do
  use BusinessWeb, :live_view

  def render(assigns) do
    ~H"""
    <section class="bg-white px-4 w-4/5 shadow-md pt-4 rounded-lg opacity-90 h-[200vh]">
      <h1>Home</h1>
    </section>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
