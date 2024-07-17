defmodule BusinessWeb.Components.Header do
  use BusinessWeb, :live_component

  def render(assigns) do
    IO.inspect(assigns)

    ~H"""
    <div class="bg-[#0f3c4c] opacity-98 px-20 sticky top-0 left-0 right-0 z-10">
      <header class="flex flex-row items-center space-x-4 justify-between ">
        <div class="py-2">
          <.icon
            name="hero-presentation-chart-line"
            class="w-16 h-16 relative text-gray-100 fill-blue-800"
          />
          <a href="/" class="font-bold text-xl text-white">Garane </a>
        </div>
        <div class="space-x-2">
          <button class="bg-white/[0.15] rounded-md  text-white py-2 px-4 background font-semibold">
            <.icon
              name="hero-plus"
              class="w-6 h-6 relative text-gray-100 fill-blue-800 stroke-width-4"
            /> Add Contact
          </button>
          <button class="bg-white/[0.15] rounded-md  text-white py-2 px-4 background font-semibold">
            <.icon
              name="hero-plus"
              class="w-6 h-6 relative text-gray-100 fill-blue-800 stroke-width-4"
            /> New Task
          </button>
        </div>
        <div class="relative w-1/5 flex items-center">
          <.input
            type="text"
            placeholder="     Jump to a contact or deal"
            name="search"
            id="search"
            value=""
          />
          <.icon
            name="hero-magnifying-glass"
            class="w-8 h-8 z-10  text-gray-800 fill-blue-800 stroke-width-4 absolute left-1 top-4 mx-4"
          />
        </div>
        <div class="flex flex-row items-center space-x-3">
          <%= if @current_user do %>
            <.link href={~p"/users/settings"} class="text-md leading-6 font-semibold text-white">
              Settings
            </.link>
            <.link
              href={~p"/users/log_out"}
              method="delete"
              class="text-md leading-6 font-semibold text-white"
            >
              Sign out
            </.link>
          <% else %>
            <.link href={~p"/users/register"} class="text-md leading-6 font-semibold text-white">
              Register
            </.link>
            <.link href={~p"/users/log_in"} class="text-md leading-6 font-semibold text-white">
              Log in
            </.link>
          <% end %>
          <.link
            href={~p"/faqs"}
            class="text-md leading-6 font-semibold text-white bg-orange-600 px-3 py-1"
          >
            Help
          </.link>
        </div>
      </header>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
