defmodule BusinessWeb.Components.SideBar do
  use BusinessWeb, :live_component

  def render(assigns) do
    IO.inspect(assigns)

    ~H"""
    <div class="w-1/5  flex flex-col space-y-1 py-8">
      <a
        href="/welcome"
        class="flex flex-row space-x-2 items-center justify-start text-center w-full  group hover:bg-gray-200  px-4 py-3 rounded"
      >
        <.icon name="hero-flag" class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600" />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">Welcome</p>
      </a>

      <a
        href="/welcome"
        class="flex flex-row space-x-2 items-center justify-start text-center  group hover:bg-gray-200 w-full px-4 py-3 rounded"
      >
        <.icon
          name="hero-hand-raised"
          class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600"
        />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">
          Good Afternoon
        </p>
      </a>
      <.link
        navigate={~p"/contacts"}
        class="flex flex-row space-x-2 items-center justify-start text-center group hover:bg-gray-200 w-full px-4 py-3 rounded"
      >
        <.icon name="hero-user" class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600" />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">
          Contacts
        </p>
      </.link>
      <.link
        navigate={~p"/tasks"}
        class="flex flex-row space-x-2 items-center justify-start text-center  group hover:bg-gray-200 w-full px-4 py-2 rounded"
      >
        <.icon
          name="hero-check-circle"
          class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600"
        />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">
          Tasks
        </p>
      </.link>
      <.link
        navigate={~p"/deals"}
        class="flex flex-row space-x-2 items-center justify-start text-center  group hover:bg-gray-200 w-full px-4 py-2 rounded"
      >
        <.icon
          name="hero-ticket"
          class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600 group-hover:fill-sky-500"
        />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">
          Deals
        </p>
      </.link>
      <a
        navigate={~p"/cases"}
        class="flex flex-row space-x-2 items-center justify-start text-center group hover:bg-gray-200 w-full px-4 py-2 rounded"
      >
        <.icon name="hero-briefcase" class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600" />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">
          Cases
        </p>
      </a>
      <a
        href="/welcome"
        class="flex flex-row space-x-2 items-center justify-start text-center  group hover:bg-gray-200  px-4 py-2 w-full rounded"
      >
        <.icon
          name="hero-magnifying-glass"
          class="w-6 h-6 relative text-gray-500 group-hover:text-blue-600"
        />
        <p class="text-center text-gray-500 group-hover:text-gray-800 font-semibold">
          Search Notes
        </p>
      </a>
    </div>
    """
  end
end
